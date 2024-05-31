import pprint
import json
from neo4j import GraphDatabase


class Maze:
    def __init__(self, maze_name):
        self.maze_name = maze_name
        neo4j_uri = "bolt://database:7687"
        neo4j_user = "neo4j"
        neo4j_password = "password"
        self.driver = GraphDatabase.driver(neo4j_uri, auth=(
            neo4j_user, neo4j_password))

        # Fetch and construct the tree
        self.tree = self.construct_tree()
        # self.tree = self.load_tree_from_json("maze_tree.json")

    def create_maze(self):
        with self.driver.session() as session:
            session.execute_write(self._create_mazey)

    def _create_mazey(self, tx):
        tx.run("MATCH (n) DETACH DELETE n")  # Clear the database for fresh start
        
        with open("../../environment/frontend_server/static_dirs/assets/the_ville/neo4j/GenerateTownFinal.cypher", 'r') as tree:
            cypher_query = tree.read()  # Read the content of the file as a string
    
        # print(cypher_query)  # Optionally print the content to verify

        # Run the Cypher query from the file content
        tx.run(cypher_query)

    def construct_tree(self):
        query = """
        MATCH (w:World {name: $maze_name})-[:HAS_SECTOR]->(s:Sector)
        OPTIONAL MATCH (s)-[:HAS_ARENA]->(a:Arena)
        OPTIONAL MATCH (a)-[:HAS_OBJECT]->(o:Object)
        OPTIONAL MATCH (s)<-[:CONNECTS_TO]-(road:Road)-[:CONNECTS_TO]->(connected_sector:Sector)
        OPTIONAL MATCH (s)-[:HAS_ARENA]->(connected_arena:Arena)
        RETURN w.name AS world, id(s) AS sector_id, s.name AS sector, s.owner AS owner, s.description AS sector_description,
            id(a) AS arena_id, a.name AS arena, a.description AS arena_description,
            o.name AS object, o.description AS object_description,
            collect(DISTINCT id(connected_sector)) AS connected_sector_ids,
            collect(DISTINCT id(connected_arena)) AS connected_arena_ids
        """
        tree = {}
        with self.driver.session() as session:
            result = session.run(query, maze_name=self.maze_name)
            sectors_by_id = {}
            arenas_by_id = {}

            for record in result:
                world = record["world"]
                sector_id = record["sector_id"]
                sector = record["sector"]
                arena_id = record["arena_id"]
                arena = record["arena"]
                obj = record["object"]
                connected_sector_ids = [s for s in record["connected_sector_ids"] if s != sector_id]
                connected_arena_ids = [a for a in record["connected_arena_ids"] if a != arena_id]

                if world not in tree:
                    tree[world] = {"sectors": {}}
                
                if sector_id not in sectors_by_id:
                    sectors_by_id[sector_id] = sector
                    tree[world]["sectors"][sector_id] = {
                        "name": sector,
                        "path": f"{world}:{sector}",
                        "owner": record["owner"],
                        "description": record["sector_description"],
                        "arenas": {},
                        "events": set(),
                        "world": world,
                        "connected_sectors": connected_sector_ids
                    }
                else:
                    tree[world]["sectors"][sector_id]["connected_sectors"].extend(
                        [s for s in connected_sector_ids if s not in tree[world]["sectors"][sector_id]["connected_sectors"]]
                    )
                
                if arena_id is not None:
                    if arena_id not in arenas_by_id:
                        arenas_by_id[arena_id] = arena
                        tree[world]["sectors"][sector_id]["arenas"][arena_id] = {
                            "name": arena,
                            "path": f"{world}:{sector}:{arena}",
                            "description": record["arena_description"],
                            "objects": [],
                            "events": set(),
                            "world": world,
                            "sector": sector,
                            "arena": arena,
                            "connected_arenas": connected_arena_ids
                        }
                    else:
                        tree[world]["sectors"][sector_id]["arenas"][arena_id]["connected_arenas"].extend(
                            [a for a in connected_arena_ids if a not in tree[world]["sectors"][sector_id]["arenas"][arena_id]["connected_arenas"]]
                        )

                    if obj is not None:
                        object = {
                            "name": obj,
                            "path": f"{world}:{sector}:{arena}:{obj}",
                            "events": set(),
                            "world": world,
                            "sector": sector,
                            "arena": arena,
                            "game_object": obj,
                            "description": record["object_description"]
                        }
                        go_event = (f"{world}:{sector}:{arena}:{obj}", None, None, None)
                        object["events"].add(go_event)
                        tree[world]["sectors"][sector_id]["arenas"][arena_id]["objects"].append(object)


        return tree
    
    def generate_json_structure(self):
        json_structure = {}

        for world, world_data in self.tree.items():
            json_structure[world] = {}
            for sector_id, sector_data in world_data["sectors"].items():
                sector_name = sector_data["name"]
                json_structure[world][sector_name] = {}
                for arena_id, arena_data in sector_data["arenas"].items():
                    arena_name = arena_data["name"]
                    objects = [obj["name"] for obj in arena_data["objects"]]
                    json_structure[world][sector_name][arena_name] = objects

        return json_structure
    
    def access_tile(self, path):
        """
        Returns the details dictionary for a given path.

        INPUT
        path: A string path in the form "world:sector:arena:object"
        OUTPUT
        The details dictionary for the designated path.
        EXAMPLE OUTPUT
        Given path="Rivenwood:Blacksmith:Forge:Forge Room:Anvil",
        returns details dictionary.
        """
        levels = path.split(":")
        if levels[0] != self.maze_name:
            return None

        node = self.tree.get(levels[0])
        if node is None:
            return None

        if len(levels) > 1:
            # Find the sector by name
            sector_id = next((id for id, data in node["sectors"].items() if data["name"] == levels[1]), None)
            if sector_id is None:
                return None
            node = node["sectors"].get(sector_id)
        if node is None:
            return None

        if len(levels) > 2:
            # Find the arena by name
            arena_id = next((id for id, data in node["arenas"].items() if data["name"] == levels[2]), None)
            if arena_id is None:
                return None
            node = node["arenas"].get(arena_id)
        if node is None:
            return None

        if len(levels) > 3:
            # Find the object by name
            node = next((item for item in node["objects"] if item["name"] == levels[3]), None)

        return node


    def get_tile_path(self, path, level):
        """
        Get the tile string address given its path. You designate the level
        by giving it a string level description.

        INPUT: 
          path: A string path in the form "world:sector:arena:object"
          level: "world", "sector", "arena", or "object"
        OUTPUT
          The string address for the tile up to the designated level.
        EXAMPLE OUTPUT
          Given path="Rivenwood:Smithy:Forge:Anvil", and level="arena",
          returns "Rivenwood:Smithy:Forge"
        """
        levels = path.split(":")
        if level == "world":
            return levels[0]
        elif level == "sector":
            return ":".join(levels[:2])
        elif level == "arena":
            return ":".join(levels[:3])
        elif level == "object":
            return path
        else:
            raise ValueError("Invalid level specified")

    def get_nearby_tiles(self, path):
        """
        Given the current path, return a list of paths for all connected sectors
        if the path is a sector, and a list of paths for all connected arenas if
        the path is an arena.

        INPUT: 
        path: A string path in the form "world:sector" or "world:sector:arena"
        OUTPUT
        A list of paths for connected sectors or arenas.
        """
        tile = self.access_tile(path)
        if tile is None:
            return []
        
        levels = path.split(":")
        if len(levels) == 2:  # It's a sector
            connected_sectors = tile.get("connected_sectors", [])
            return [self.get_section_or_arena_by_id(sector)["path"] for sector in connected_sectors]
        elif len(levels) == 3:  # It's an arena
            connected_arenas = tile.get("connected_arenas", [])
            print(self.get_section_or_arena_by_id(connected_arenas[0]))
            objects = [obj["path"] for obj in tile.get("objects", [])]
            result = [self.get_section_or_arena_by_id(arena)["path"] for arena in connected_arenas]
            result.extend(objects)
            return result
        elif len(levels) == 4:  # It's an object
        # No further connections for objects, return an empty list
            path = self.get_tile_path(path, "arena")
            tile = self.access_tile(path)
            connected_arenas = tile.get("connected_arenas", [])
            print(self.get_section_or_arena_by_id(connected_arenas[0]))
            objects = [obj["path"] for obj in tile.get("objects", [])]
            result = [self.get_section_or_arena_by_id(arena)["path"] for arena in connected_arenas]
            result.extend(objects)
            return result
        else:
            return []

    def get_section_or_arena_by_id(self, node_id):
        """
        Returns the node details dictionary for a given node ID.

        INPUT
        node_id: The ID of the node to retrieve.
        OUTPUT
        The details dictionary for the designated node, or None if not found.
        """
        for world in self.tree.values():
            for sector_id, sector_data in world["sectors"].items():
                if str(sector_id) == str(node_id):
                    return sector_data
                for arena_id, arena_data in sector_data["arenas"].items():
                    if str(arena_id) == str(node_id):
                        return arena_data
        return None

    def add_event_from_tile(self, curr_event, path):
        """
        Add an event to a path.

        INPUT: 
          curr_event: Current event.
          path: A string path in the form "world:sector:arena:object"
        OUTPUT: 
          None
        """
        if not curr_event[0] or curr_event[0] == "<random>":
            return
        node = self.access_tile(path)
        if node is not None:
            if "events" not in node:
                node["events"] = set()
            node["events"].add(curr_event)

    def remove_event_from_tile(self, curr_event, path):
        """
        Remove an event from a path.

        INPUT: 
          curr_event: Current event.
          path: A string path in the form "world:sector:arena:object"
        OUTPUT: 
          None
        """
        node = self.access_tile(path)
        if node is not None and "events" in node:
            node["events"].discard(curr_event)
            print(node["events"])

    def turn_event_from_tile_idle(self, curr_event, path):
        """
        Turn an event from active to idle in a path.

        INPUT: 
          curr_event: Current event.
          path: A string path in the form "world:sector:arena:object"
        OUTPUT: 
          None
        """
        node = self.access_tile(path)
        if node is not None and "events" in node:
            node["events"].discard(curr_event)
            new_event = (curr_event[0], None, None, None)
            node["events"].add(new_event)

    def remove_subject_events_from_tile(self, subject, path):
        """
        Remove events associated with a subject from a path.

        INPUT: 
          subject: The subject to remove events for.
          path: A string path in the form "world:sector:arena:object"
        OUTPUT: 
          None
        """
        node = self.access_tile(path)
        if node is not None and "events" in node:
            node["events"] = {
                event for event in node["events"] if event[0] != subject}

    def save_tree_as_json(self, filename):
        """
        Save the tree structure to a JSON file.

        INPUT
          filename: The name of the file to save the JSON to.
        OUTPUT
          None
        """
        with open(filename, 'w') as f:
            json.dump(self.tree, f, indent=4)

    def load_tree_from_json(self, filename):
        """
        Load the tree structure from a JSON file.

        INPUT
        filename: The name of the JSON file to load the tree from.
        OUTPUT
        The reconstructed tree structure.
        """
        with open(filename, 'r') as f:
            tree = json.load(f)
        return tree

    def close(self):
        self.driver.close()

# Example usage


# maze_name = "Rivenwood"

# maze = Maze(maze_name)

# maze.create_maze() # run this to create the maze in the database

# pprint.pprint(maze.tree)

# path = "Rivenwood:Elder Elara's House:Living Room"
# print(maze.access_tile(path))
# print(maze.get_section_or_arena_by_id(3867))
# print(maze.get_tile_path(path, "sector"))

# path = "Rivenwood:Blacksmith Barin's House:Living Quarters"
# print(maze.get_nearby_tiles(path))
# maze.add_event_from_tile(("Rivenwood:Blacksmith Barin's House:Living Quarters:Living Quarters", None, None, None), path)
# print(maze.access_tile(path)["events"])
# maze.add_event_from_tile(("Rivenwood:Blacksmith Barin's House:Living Quarters:Living Quarters", None, None, None), path)
# print(maze.access_tile(path)["events"])

# # maze.save_tree_as_json("maze_tree.json")


# maze.close()

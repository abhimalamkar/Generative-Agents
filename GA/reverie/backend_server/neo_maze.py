from neo4j import GraphDatabase
import json
import numpy
import datetime
import pickle
import time
import math
import os
import shutil
import traceback

from selenium import webdriver

import utils
from global_methods import *
from utils import *
from maze import *
from metrics import metrics
import argparse

from neo4j import GraphDatabase
import json
import math
import os


class Maze:
    def __init__(self, maze_name, uri, user, password):
        self.maze_name = maze_name
        self.driver = GraphDatabase.driver(uri, auth=(user, password), database="world")

        # READING IN THE BASIC META INFORMATION ABOUT THE MAP
        meta_info = json.load(open(f"{env_matrix}/maze_meta_info.json"))
        self.maze_width = int(meta_info["maze_width"])
        self.maze_height = int(meta_info["maze_height"])
        self.sq_tile_size = int(meta_info["sq_tile_size"])
        self.special_constraint = meta_info["special_constraint"]

        # READING IN THE BASIC META INFORMATION ABOUT THE MAP
        meta_info = json.load(open(f"{env_matrix}/maze_meta_info.json"))
        self.maze_width = int(meta_info["maze_width"])
        self.maze_height = int(meta_info["maze_height"])
        self.sq_tile_size = int(meta_info["sq_tile_size"])
        self.special_constraint = meta_info["special_constraint"]

        # READING IN SPECIAL BLOCKS
        blocks_folder = f"{env_matrix}/special_blocks"

        _wb = blocks_folder + "/world_blocks.csv"
        wb_rows = read_file_to_list(_wb, header=False)
        self.world = wb_rows[0][-1]

        _sb = blocks_folder + "/sector_blocks.csv"
        sb_rows = read_file_to_list(_sb, header=False)
        self.sb_dict = {i[0]: i[-1] for i in sb_rows}

        _ab = blocks_folder + "/arena_blocks.csv"
        ab_rows = read_file_to_list(_ab, header=False)
        self.ab_dict = {i[0]: i[-1] for i in ab_rows}

        _gob = blocks_folder + "/game_object_blocks.csv"
        gob_rows = read_file_to_list(_gob, header=False)
        self.gob_dict = {i[0]: i[-1] for i in gob_rows}

        _slb = blocks_folder + "/spawning_location_blocks.csv"
        slb_rows = read_file_to_list(_slb, header=False)
        self.slb_dict = {i[0]: i[-1] for i in slb_rows}

        # Read the matrices
        maze_folder = f"{env_matrix}/maze"

        _cm = maze_folder + "/collision_maze.csv"
        self.collision_maze_raw = read_file_to_list(_cm, header=False)[0]
        _sm = maze_folder + "/sector_maze.csv"
        self.sector_maze_raw = read_file_to_list(_sm, header=False)[0]
        _am = maze_folder + "/arena_maze.csv"
        self.arena_maze_raw = read_file_to_list(_am, header=False)[0]
        _gom = maze_folder + "/game_object_maze.csv"
        self.game_object_maze_raw = read_file_to_list(_gom, header=False)[0]
        _slm = maze_folder + "/spawning_location_maze.csv"
        self.spawning_location_maze_raw = read_file_to_list(_slm, header=False)[0]

        # Create 2D representation from 1D raw data
        self.collision_maze = self._convert_1d_to_2d(self.collision_maze_raw)
        self.sector_maze = self._convert_1d_to_2d(self.sector_maze_raw)
        self.arena_maze = self._convert_1d_to_2d(self.arena_maze_raw)
        self.game_object_maze = self._convert_1d_to_2d(self.game_object_maze_raw)
        self.spawning_location_maze = self._convert_1d_to_2d(self.spawning_location_maze_raw)

        # Create maze in Neo4j
        self.create_maze()

    def close(self):
        self.driver.close()

    def _convert_1d_to_2d(self, raw_data):
        return [raw_data[i:i+self.maze_width] for i in range(0, len(raw_data), self.maze_width)]

    def create_maze(self):
        with self.driver.session() as session:
            session.execute_write(self._create_hierarchy)

    def _create_hierarchy(self, tx):
        tx.run("MATCH (n) DETACH DELETE n")  # Clear the database for fresh start

        # Create world node
        tx.run("CREATE (:World {name: $name})", name=self.world)

        sector_dimensions = {}
        arena_dimensions = {}
        game_object_dimensions = {}
        spawning_location_dimensions = {}

        for i in range(self.maze_height):
            for j in range(self.maze_width):
                sector_id = self.sector_maze[i][j]
                arena_id = self.arena_maze[i][j]
                game_object_id = self.game_object_maze[i][j]
                spawning_location_id = self.spawning_location_maze[i][j]

                if sector_id != '0':
                    if sector_id not in sector_dimensions:
                        sector_dimensions[sector_id] = {"x_min": j, "x_max": j, "y_min": i, "y_max": i}
                    else:
                        sector_dimensions[sector_id]["x_min"] = min(sector_dimensions[sector_id]["x_min"], j)
                        sector_dimensions[sector_id]["x_max"] = max(sector_dimensions[sector_id]["x_max"], j)
                        sector_dimensions[sector_id]["y_min"] = min(sector_dimensions[sector_id]["y_min"], i)
                        sector_dimensions[sector_id]["y_max"] = max(sector_dimensions[sector_id]["y_max"], i)

                if arena_id != '0':
                    if arena_id not in arena_dimensions:
                        arena_dimensions[arena_id] = {"x_min": j, "x_max": j, "y_min": i, "y_max": i}
                    else:
                        arena_dimensions[arena_id]["x_min"] = min(arena_dimensions[arena_id]["x_min"], j)
                        arena_dimensions[arena_id]["x_max"] = max(arena_dimensions[arena_id]["x_max"], j)
                        arena_dimensions[arena_id]["y_min"] = min(arena_dimensions[arena_id]["y_min"], i)
                        arena_dimensions[arena_id]["y_max"] = max(arena_dimensions[arena_id]["y_max"], i)

                if game_object_id != '0':
                    if game_object_id not in game_object_dimensions:
                        game_object_dimensions[game_object_id] = {"x_min": j, "x_max": j, "y_min": i, "y_max": i}
                    else:
                        game_object_dimensions[game_object_id]["x_min"] = min(game_object_dimensions[game_object_id]["x_min"], j)
                        game_object_dimensions[game_object_id]["x_max"] = max(game_object_dimensions[game_object_id]["x_max"], j)
                        game_object_dimensions[game_object_id]["y_min"] = min(game_object_dimensions[game_object_id]["y_min"], i)
                        game_object_dimensions[game_object_id]["y_max"] = max(game_object_dimensions[game_object_id]["y_max"], i)

                if spawning_location_id != '0':
                    if spawning_location_id not in spawning_location_dimensions:
                        spawning_location_dimensions[spawning_location_id] = {"x_min": j, "x_max": j, "y_min": i, "y_max": i}
                    else:
                        spawning_location_dimensions[spawning_location_id]["x_min"] = min(spawning_location_dimensions[spawning_location_id]["x_min"], j)
                        spawning_location_dimensions[spawning_location_id]["x_max"] = max(spawning_location_dimensions[spawning_location_id]["x_max"], j)
                        spawning_location_dimensions[spawning_location_id]["y_min"] = min(spawning_location_dimensions[spawning_location_id]["y_min"], i)
                        spawning_location_dimensions[spawning_location_id]["y_max"] = max(spawning_location_dimensions[spawning_location_id]["y_max"], i)

        # Create or match sector nodes with dimensions
        for sector_id, dims in sector_dimensions.items():
            sector_name = self.sb_dict[sector_id]
            width = dims["x_max"] - dims["x_min"] + 1
            height = dims["y_max"] - dims["y_min"] + 1
            center_x = dims["x_min"] + width / 2
            center_y = dims["y_min"] + height / 2
            tx.run("""
                MERGE (w:World {name: $world})
                MERGE (s:Sector {id: $id, name: $name, world: $world, width: $width, height: $height, center_x: $center_x, center_y: $center_y})
                MERGE (w)-[:HAS_SECTOR]->(s)
            """, world=self.world, id=sector_id, name=sector_name, width=width, height=height, center_x=center_x, center_y=center_y)

        # Create or match arena nodes with dimensions
        for arena_id, dims in arena_dimensions.items():
            arena_name = self.ab_dict[arena_id]
            width = dims["x_max"] - dims["x_min"] + 1
            height = dims["y_max"] - dims["y_min"] + 1
            center_x = dims["x_min"] + width / 2
            center_y = dims["y_min"] + height / 2
            sector_id = self.sector_maze[dims["y_min"]][dims["x_min"]]
            if sector_id in self.sb_dict:
                sector_name = self.sb_dict[sector_id]
                tx.run("""
                    MERGE (s:Sector {id: $sector_id, name: $sector_name, world: $world})
                    MERGE (a:Arena {id: $id, name: $name, sector: $sector_name, width: $width, height: $height, center_x: $center_x, center_y: $center_y})
                    MERGE (s)-[:HAS_ARENA]->(a)
                """, world=self.world, sector_id=sector_id, sector_name=sector_name, id=arena_id, name=arena_name, width=width, height=height, center_x=center_x, center_y=center_y)

        # Create or match game object nodes with dimensions
        for game_object_id, dims in game_object_dimensions.items():
            game_object_name = self.gob_dict[game_object_id]
            width = dims["x_max"] - dims["x_min"] + 1
            height = dims["y_max"] - dims["y_min"] + 1
            center_x = dims["x_min"] + width / 2
            center_y = dims["y_min"] + height / 2
            arena_id = self.arena_maze[dims["y_min"]][dims["x_min"]]
            if arena_id in self.ab_dict:
                arena_name = self.ab_dict[arena_id]
                tx.run("""
                    MERGE (a:Arena {id: $arena_id, name: $arena_name})
                    MERGE (g:GameObject {id: $id, name: $name, arena: $arena_name, width: $width, height: $height, center_x: $center_x, center_y: $center_y})
                    MERGE (a)-[:HAS_GAME_OBJECT]->(g)
                """, arena_id=arena_id, arena_name=arena_name, id=game_object_id, name=game_object_name, width=width, height=height, center_x=center_x, center_y=center_y)

        # Create or match spawning location nodes with dimensions
        for spawning_location_id, dims in spawning_location_dimensions.items():
            spawning_location_name = self.slb_dict[spawning_location_id]
            width = dims["x_max"] - dims["x_min"] + 1
            height = dims["y_max"] - dims["y_min"] + 1
            center_x = dims["x_min"] + width / 2
            center_y = dims["y_min"] + height / 2
            game_object_id = self.game_object_maze[dims["y_min"]][dims["x_min"]]
            if game_object_id in self.gob_dict:
                game_object_name = self.gob_dict[game_object_id]
                tx.run("""
                    MERGE (g:GameObject {id: $game_object_id, name: $game_object_name})
                    MERGE (sl:SpawningLocation {id: $id, name: $name, game_object: $game_object_name, width: $width, height: $height, center_x: $center_x, center_y: $center_y})
                    MERGE (g)-[:HAS_SPAWNING_LOCATION]->(sl)
                """, game_object_id=game_object_id, game_object_name=game_object_name, id=spawning_location_id, name=spawning_location_name, width=width, height=height, center_x=center_x, center_y=center_y)


# Initialize the maze and transfer to Unreal
maze = Maze("example_maze", "bolt://localhost:7687", "neo4j", "ABhijeet55")
# Ensure to close the driver after use
maze.close()

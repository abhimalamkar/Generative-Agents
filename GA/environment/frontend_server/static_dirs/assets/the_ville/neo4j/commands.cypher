// Create World
MERGE (w:World {name: "Rivenwood"})

// Create Buildings as Sectors
MERGE (hA1_1:Sector {name: "HouseA1-1", owner: "Elder Elara", description: "Elder Elara's House"})
MERGE (hA1_2:Sector {name: "HouseA1-2", owner: "Blacksmith Barin", description: "Blacksmith Barin's House"})
MERGE (hA2_1:Sector {name: "HouseA2-1", owner: "Farmer Finn", description: "Farmer Finn's House"})
MERGE (hA2_2:Sector {name: "HouseA2-2", owner: "Healer Hera", description: "Healer Hera's House"})
MERGE (hB1_1:Sector {name: "HouseB1-1", owner: "Merchant Morgan", description: "Merchant Morgan's House"})
MERGE (hB1_2:Sector {name: "HouseB1-2", owner: "Guard Captain Garen", description: "Guard Captain Garen's House"})
MERGE (hC1_1:Sector {name: "HouseC1-1", owner: "Carpenter Colin", description: "Carpenter Colin's House"})
MERGE (hC1_2:Sector {name: "HouseC1-2", owner: "Tailor Talia", description: "Tailor Talia's House"})
MERGE (hC2_1:Sector {name: "HouseC2-1", owner: "Baker Bella", description: "Baker Bella's House"})
MERGE (hC2_2:Sector {name: "HouseC2-2", owner: "Fisherman Finn", description: "Fisherman Finn's House"})
MERGE (hD1_1:Sector {name: "HouseD1-1", owner: "Shopkeeper Sara", description: "Shopkeeper Sara's Shop"})
MERGE (hD1_2:Sector {name: "HouseD1-2", owner: "Innkeeper Ian", description: "Innkeeper Ian's Inn"})
MERGE (hD2_1:Sector {name: "HouseD2-1", owner: "Craftsman Caleb", description: "Craftsman Caleb's Workshop"})
MERGE (hD2_2:Sector {name: "HouseD2-2", owner: "Alchemist Alana", description: "Alchemist Alana's Alchemy Shop"})
MERGE (hE1_1:Sector {name: "HouseE1-1", owner: "Sailor Sam", description: "Sailor Sam's House"})
MERGE (hE1_2:Sector {name: "HouseE1-2", owner: "Harbormaster Hank", description: "Harbormaster Hank's House"})

// Establish Relationships between World and Buildings
MERGE (w)-[:HAS_SECTOR]->(hA1_1)
MERGE (w)-[:HAS_SECTOR]->(hA1_2)
MERGE (w)-[:HAS_SECTOR]->(hA2_1)
MERGE (w)-[:HAS_SECTOR]->(hA2_2)
MERGE (w)-[:HAS_SECTOR]->(hB1_1)
MERGE (w)-[:HAS_SECTOR]->(hB1_2)
MERGE (w)-[:HAS_SECTOR]->(hC1_1)
MERGE (w)-[:HAS_SECTOR]->(hC1_2)
MERGE (w)-[:HAS_SECTOR]->(hC2_1)
MERGE (w)-[:HAS_SECTOR]->(hC2_2)
MERGE (w)-[:HAS_SECTOR]->(hD1_1)
MERGE (w)-[:HAS_SECTOR]->(hD1_2)
MERGE (w)-[:HAS_SECTOR]->(hD2_1)
MERGE (w)-[:HAS_SECTOR]->(hD2_2)
MERGE (w)-[:HAS_SECTOR]->(hE1_1)
MERGE (w)-[:HAS_SECTOR]->(hE1_2)

// Create Arenas within Buildings (Rooms or Functional Areas)
MERGE (rA1_1_1:Arena {name: "Living Room", description: "Living Room of Elder Elara's House"})
MERGE (rA1_1_2:Arena {name: "Bedroom", description: "Bedroom of Elder Elara's House"})
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_1)
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_2)

MERGE (rA1_2_1:Arena {name: "Forge", description: "Blacksmith Barin's Forge"})
MERGE (rA1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Blacksmith Barin"})
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_1)
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_2)

MERGE (rA2_1_1:Arena {name: "Living Room", description: "Living Room of Farmer Finn's House"})
MERGE (rA2_1_2:Arena {name: "Barn", description: "Barn of Farmer Finn's House"})
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_1)
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_2)

MERGE (rA2_2_1:Arena {name: "Herbal Room", description: "Herbal Room of Healer Hera"})
MERGE (rA2_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Healer Hera"})
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_1)
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_2)

MERGE (rB1_1_1:Arena {name: "Trading Room", description: "Trading Room of Merchant Morgan"})
MERGE (rB1_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Merchant Morgan"})
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_1)
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_2)

MERGE (rB1_2_1:Arena {name: "Office", description: "Office of Guard Captain Garen"})
MERGE (rB1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Guard Captain Garen"})
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_1)
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_2)

MERGE (rC1_1_1:Arena {name: "Workshop", description: "Workshop of Carpenter Colin"})
MERGE (rC1_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Carpenter Colin"})
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_1)
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_2)

MERGE (rC1_2_1:Arena {name: "Tailoring Room", description: "Tailoring Room of Tailor Talia"})
MERGE (rC1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Tailor Talia"})
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_1)
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_2)

MERGE (rC2_1_1:Arena {name: "Bakery", description: "Bakery of Baker Bella"})
MERGE (rC2_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Baker Bella"})
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_1)
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_2)

MERGE (rC2_2_1:Arena {name: "Fishing Gear Room", description: "Fishing Gear Room of Fisherman Finn"})
MERGE (rC2_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Fisherman Finn"})
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_1)
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_2)

MERGE (rD1_1_1:Arena {name: "Shop Floor", description: "Shop Floor of Shopkeeper Sara"})
MERGE (rD1_1_2:Arena {name: "Storage Room", description: "Storage Room of Shopkeeper Sara"})
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_1)
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_2)

MERGE (rD1_2_1:Arena {name: "Common Room", description: "Common Room of Innkeeper Ian"})
MERGE (rD1_2_2:Arena {name: "Guest Rooms", description: "Guest Rooms of Innkeeper Ian"})
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_1)
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_2)

MERGE (rD2_1_1:Arena {name: "Workshop Floor", description: "Workshop Floor of Craftsman Caleb"})
MERGE (rD2_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Craftsman Caleb"})
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_1)
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_2)

MERGE (rD2_2_1:Arena {name: "Alchemy Lab", description: "Alchemy Lab of Alchemist Alana"})
MERGE (rD2_2_2:Arena {name: "Storage Room", description: "Storage Room of Alchemist Alana"})
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_1)
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_2)

MERGE (rE1_1_1:Arena {name: "Living Room", description: "Living Room of Sailor Sam's House"})
MERGE (rE1_1_2:Arena {name: "Bedroom", description: "Bedroom of Sailor Sam's House"})
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_1)
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_2)

MERGE (rE1_2_1:Arena {name: "Office", description: "Office of Harbormaster Hank"})
MERGE (rE1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Harbormaster Hank"})
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_1)
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_2)


// Create Roads to Connect All Buildings
MERGE (road1:Road {name: "Main Street", description: "The main road through Rivenwood", location: point({x: 0, y: 0, z: 0})})
MERGE (road2:Road {name: "Market Street", description: "The road leading to the market area", location: point({x: 0, y: 700, z: 0})})
MERGE (road3:Road {name: "Harbor Road", description: "The road leading to the harbor", location: point({x: 0, y: 1400, z: 0})})

// Connect Roads to Buildings
MERGE (road1)-[:CONNECTS_TO]->(hA1_1)
MERGE (road1)-[:CONNECTS_TO]->(hA1_2)
MERGE (road1)-[:CONNECTS_TO]->(hA2_1)
MERGE (road1)-[:CONNECTS_TO]->(hA2_2)
MERGE (road2)-[:CONNECTS_TO]->(hB1_1)
MERGE (road2)-[:CONNECTS_TO]->(hB1_2)
MERGE (road2)-[:CONNECTS_TO]->(hC1_1)
MERGE (road2)-[:CONNECTS_TO]->(hC1_2)
MERGE (road3)-[:CONNECTS_TO]->(hC2_1)
MERGE (road3)-[:CONNECTS_TO]->(hC2_2)
MERGE (road3)-[:CONNECTS_TO]->(hD1_1)
MERGE (road3)-[:CONNECTS_TO]->(hD1_2)
MERGE (road3)-[:CONNECTS_TO]->(hD2_1)
MERGE (road3)-[:CONNECTS_TO]->(hD2_2)
MERGE (road3)-[:CONNECTS_TO]->(hE1_1)
MERGE (road3)-[:CONNECTS_TO]->(hE1_2)

// Create Pathways to Connect Arenas within Buildings
MERGE (pathA1_1:Pathway {name: "Pathway A1-1", description: "Pathway connecting rooms in Elder Elara's House", location: point({x: 0, y: 0, z: 0})})
MERGE (pathA1_2:Pathway {name: "Pathway A1-2", description: "Pathway connecting rooms in Blacksmith Barin's House", location: point({x: 600, y: 0, z: 0})})
MERGE (pathA2_1:Pathway {name: "Pathway A2-1", description: "Pathway connecting rooms in Farmer Finn's House", location: point({x: 1200, y: 0, z: 0})})
MERGE (pathA2_2:Pathway {name: "Pathway A2-2", description: "Pathway connecting rooms in Healer Hera's House", location: point({x: 1800, y: 0, z: 0})})
MERGE (pathB1_1:Pathway {name: "Pathway B1-1", description: "Pathway connecting rooms in Merchant Morgan's House", location: point({x: 0, y: 700, z: 0})})
MERGE (pathB1_2:Pathway {name: "Pathway B1-2", description: "Pathway connecting rooms in Guard Captain Garen's House", location: point({x: 600, y: 700, z: 0})})
MERGE (pathC1_1:Pathway {name: "Pathway C1-1", description: "Pathway connecting rooms in Carpenter Colin's House", location: point({x: 1200, y: 700, z: 0})})
MERGE (pathC1_2:Pathway {name: "Pathway C1-2", description: "Pathway connecting rooms in Tailor Talia's House", location: point({x: 1800, y: 700, z: 0})})
MERGE (pathC2_1:Pathway {name: "Pathway C2-1", description: "Pathway connecting rooms in Baker Bella's House", location: point({x: 0, y: 1400, z: 0})})
MERGE (pathC2_2:Pathway {name: "Pathway C2-2", description: "Pathway connecting rooms in Fisherman Finn's House", location: point({x: 600, y: 1400, z: 0})})
MERGE (pathD1_1:Pathway {name: "Pathway D1-1", description: "Pathway connecting rooms in Shopkeeper Sara's Shop", location: point({x: 1200, y: 1400, z: 0})})
MERGE (pathD1_2:Pathway {name: "Pathway D1-2", description: "Pathway connecting rooms in Innkeeper Ian's Inn", location: point({x: 1800, y: 1400, z: 0})})
MERGE (pathD2_1:Pathway {name: "Pathway D2-1", description: "Pathway connecting rooms in Craftsman Caleb's Workshop", location: point({x: 0, y: 2100, z: 0})})
MERGE (pathD2_2:Pathway {name: "Pathway D2-2", description: "Pathway connecting rooms in Alchemist Alana's Alchemy Shop", location: point({x: 600, y: 2100, z: 0})})
MERGE (pathE1_1:Pathway {name: "Pathway E1-1", description: "Pathway connecting rooms in Sailor Sam's House", location: point({x: 1200, y: 2100, z: 0})})
MERGE (pathE1_2:Pathway {name: "Pathway E1-2", description: "Pathway connecting rooms in Harbormaster Hank's House", location: point({x: 1800, y: 2100, z: 0})})

// Connect Pathways to Arenas within Buildings
MERGE (pathA1_1)-[:CONNECTS_TO]->(rA1_1_1)
MERGE (pathA1_1)-[:CONNECTS_TO]->(rA1_1_2)
MERGE (pathA1_1)-[:CONNECTS_TO]->(rA1_1_3)
MERGE (pathA1_1)-[:CONNECTS_TO]->(rA1_1_4)

MERGE (pathA1_2)-[:CONNECTS_TO]->(rA1_2_1)
MERGE (pathA1_2)-[:CONNECTS_TO]->(rA1_2_2)
MERGE (pathA1_2)-[:CONNECTS_TO]->(rA1_2_3)
MERGE (pathA1_2)-[:CONNECTS_TO]->(rA1_2_4)

MERGE (pathA2_1)-[:CONNECTS_TO]->(rA2_1_1)
MERGE (pathA2_1)-[:CONNECTS_TO]->(rA2_1_2)
MERGE (pathA2_1)-[:CONNECTS_TO]->(rA2_1_3)
MERGE (pathA2_1)-[:CONNECTS_TO]->(rA2_1_4)

MERGE (pathA2_2)-[:CONNECTS_TO]->(rA2_2_1)
MERGE (pathA2_2)-[:CONNECTS_TO]->(rA2_2_2)
MERGE (pathA2_2)-[:CONNECTS_TO]->(rA2_2_3)
MERGE (pathA2_2)-[:CONNECTS_TO]->(rA2_2_4)
MERGE (pathA2_2)-[:CONNECTS_TO]->(rA2_2_5)

MERGE (pathB1_1)-[:CONNECTS_TO]->(rB1_1_1)
MERGE (pathB1_1)-[:CONNECTS_TO]->(rB1_1_2)
MERGE (pathB1_1)-[:CONNECTS_TO]->(rB1_1_3)
MERGE (pathB1_1)-[:CONNECTS_TO]->(rB1_1_4)
MERGE (pathB1_1)-[:CONNECTS_TO]->(rB1_1_5)

MERGE (pathB1_2)-[:CONNECTS_TO]->(rB1_2_1)
MERGE (pathB1_2)-[:CONNECTS_TO]->(rB1_2_2)
MERGE (pathB1_2)-[:CONNECTS_TO]->(rB1_2_3)
MERGE (pathB1_2)-[:CONNECTS_TO]->(rB1_2_4)
MERGE (pathB1_2)-[:CONNECTS_TO]->(rB1_2_5)

MERGE (pathC1_1)-[:CONNECTS_TO]->(rC1_1_1)
MERGE (pathC1_1)-[:CONNECTS_TO]->(rC1_1_2)
MERGE (pathC1_1)-[:CONNECTS_TO]->(rC1_1_3)
MERGE (pathC1_1)-[:CONNECTS_TO]->(rC1_1_4)
MERGE (pathC1_1)-[:CONNECTS_TO]->(rC1_1_5)

MERGE (pathC1_2)-[:CONNECTS_TO]->(rC1_2_1)
MERGE (pathC1_2)-[:CONNECTS_TO]->(rC1_2_2)
MERGE (pathC1_2)-[:CONNECTS_TO]->(rC1_2_3)
MERGE (pathC1_2)-[:CONNECTS_TO]->(rC1_2_4)
MERGE (pathC1_2)-[:CONNECTS_TO]->(rC1_2_5)

MERGE (pathC2_1)-[:CONNECTS_TO]->(rC2_1_1)
MERGE (pathC2_1)-[:CONNECTS_TO]->(rC2_1_2)
MERGE (pathC2_1)-[:CONNECTS_TO]->(rC2_1_3)
MERGE (pathC2_1)-[:CONNECTS_TO]->(rC2_1_4)
MERGE (pathC2_1)-[:CONNECTS_TO]->(rC2_1_5)

MERGE (pathC2_2)-[:CONNECTS_TO]->(rC2_2_1)
MERGE (pathC2_2)-[:CONNECTS_TO]->(rC2_2_2)
MERGE (pathC2_2)-[:CONNECTS_TO]->(rC2_2_3)
MERGE (pathC2_2)-[:CONNECTS_TO]->(rC2_2_4)
MERGE (pathC2_2)-[:CONNECTS_TO]->(rC2_2_5)

MERGE (pathD1_1)-[:CONNECTS_TO]->(rD1_1_1)
MERGE (pathD1_1)-[:CONNECTS_TO]->(rD1_1_2)
MERGE (pathD1_1)-[:CONNECTS_TO]->(rD1_1_3)
MERGE (pathD1_1)-[:CONNECTS_TO]->(rD1_1_4)
MERGE (pathD1_1)-[:CONNECTS_TO]->(rD1_1_5)

MERGE (pathD1_2)-[:CONNECTS_TO]->(rD1_2_1)
MERGE (pathD1_2)-[:CONNECTS_TO]->(rD1_2_2)
MERGE (pathD1_2)-[:CONNECTS_TO]->(rD1_2_3)
MERGE (pathD1_2)-[:CONNECTS_TO]->(rD1_2_4)
MERGE (pathD1_2)-[:CONNECTS_TO]->(rD1_2_5)

MERGE (pathD2_1)-[:CONNECTS_TO]->(rD2_1_1)
MERGE (pathD2_1)-[:CONNECTS_TO]->(rD2_1_2)
MERGE (pathD2_1)-[:CONNECTS_TO]->(rD2_1_3)
MERGE (pathD2_1)-[:CONNECTS_TO]->(rD2_1_4)
MERGE (pathD2_1)-[:CONNECTS_TO]->(rD2_1_5)

MERGE (pathD2_2)-[:CONNECTS_TO]->(rD2_2_1)
MERGE (pathD2_2)-[:CONNECTS_TO]->(rD2_2_2)
MERGE (pathD2_2)-[:CONNECTS_TO]->(rD2_2_3)
MERGE (pathD2_2)-[:CONNECTS_TO]->(rD2_2_4)
MERGE (pathD2_2)-[:CONNECTS_TO]->(rD2_2_5)

MERGE (pathE1_1)-[:CONNECTS_TO]->(rE1_1_1)
MERGE (pathE1_1)-[:CONNECTS_TO]->(rE1_1_2)
MERGE (pathE1_1)-[:CONNECTS_TO]->(rE1_1_3)
MERGE (pathE1_1)-[:CONNECTS_TO]->(rE1_1_4)
MERGE (pathE1_1)-[:CONNECTS_TO]->(rE1_1_5)

MERGE (pathE1_2)-[:CONNECTS_TO]->(rE1_2_1)
MERGE (pathE1_2)-[:CONNECTS_TO]->(rE1_2_2)
MERGE (pathE1_2)-[:CONNECTS_TO]->(rE1_2_3)
MERGE (pathE1_2)-[:CONNECTS_TO]->(rE1_2_4)
MERGE (pathE1_2)-[:CONNECTS_TO]->(rE1_2_5)

// HouseA1-1 (Elder Elara's House)
MERGE (o_a1_1_1:Object {name: "Ornate Chair", description: "Comfortable chair with intricate designs"})
MERGE (o_a1_1_2:Object {name: "Desk", description: "Large wooden desk"})
MERGE (o_a1_1_3:Object {name: "Bookshelf", description: "Filled with ancient books"})
MERGE (o_a1_1_4:Object {name: "Bed", description: "King-sized bed with fine linens"})
MERGE (o_a1_1_5:Object {name: "Carpet", description: "Luxurious carpet covering the floor"})
MERGE (rA1_1_1)-[:HAS_OBJECT]->(o_a1_1_1)
MERGE (rA1_1_2)-[:HAS_OBJECT]->(o_a1_1_4)
MERGE (rA1_1_3)-[:HAS_OBJECT]->(o_a1_1_5)
MERGE (rA1_1_4)-[:HAS_OBJECT]->(o_a1_1_3)
MERGE (rA1_1_4)-[:HAS_OBJECT]->(o_a1_1_2)

// HouseA1-2 (Blacksmith Barin's House)
MERGE (o_a1_2_1:Object {name: "Anvil", description: "Sturdy anvil for forging"})
MERGE (o_a1_2_2:Object {name: "Forge", description: "Large forge for heating metal"})
MERGE (o_a1_2_3:Object {name: "Hammer", description: "Heavy hammer for blacksmithing"})
MERGE (o_a1_2_4:Object {name: "Simple Bed", description: "Simple bed with basic linens"})
MERGE (o_a1_2_5:Object {name: "Workbench", description: "Workbench for crafting items"})
MERGE (rA1_2_1)-[:HAS_OBJECT]->(o_a1_2_1)
MERGE (rA1_2_1)-[:HAS_OBJECT]->(o_a1_2_2)
MERGE (rA1_2_1)-[:HAS_OBJECT]->(o_a1_2_3)
MERGE (rA1_2_2)-[:HAS_OBJECT]->(o_a1_2_4)
MERGE (rA1_2_4)-[:HAS_OBJECT]->(o_a1_2_5)

// HouseA2-1 (Farmer Finn's House)
MERGE (o_a2_1_1:Object {name: "Wooden Table", description: "Sturdy wooden table"})
MERGE (o_a2_1_2:Object {name: "Chairs", description: "Simple wooden chairs"})
MERGE (o_a2_1_3:Object {name: "Bed", description: "Modest bed with simple linens"})
MERGE (o_a2_1_4:Object {name: "Barn Tools", description: "Tools for farming"})
MERGE (o_a2_1_5:Object {name: "Grain Sack", description: "Sacks of grain for storage"})
MERGE (rA2_1_1)-[:HAS_OBJECT]->(o_a2_1_1)
MERGE (rA2_1_1)-[:HAS_OBJECT]->(o_a2_1_2)
MERGE (rA2_1_2)-[:HAS_OBJECT]->(o_a2_1_4)
MERGE (rA2_1_3)-[:HAS_OBJECT]->(o_a2_1_3)
MERGE (rA2_1_5)-[:HAS_OBJECT]->(o_a2_1_5)

// HouseA2-2 (Healer Hera's House)
MERGE (o_a2_2_1:Object {name: "Herb Shelf", description: "Shelf filled with various herbs"})
MERGE (o_a2_2_2:Object {name: "Mortar and Pestle", description: "Used for grinding herbs"})
MERGE (o_a2_2_3:Object {name: "Bed", description: "Comfortable bed with soft linens"})
MERGE (o_a2_2_4:Object {name: "Wooden Chair", description: "Simple wooden chair"})
MERGE (o_a2_2_5:Object {name: "Garden Tools", description: "Tools for gardening"})
MERGE (rA2_2_1)-[:HAS_OBJECT]->(o_a2_2_1)
MERGE (rA2_2_1)-[:HAS_OBJECT]->(o_a2_2_2)
MERGE (rA2_2_2)-[:HAS_OBJECT]->(o_a2_2_3)
MERGE (rA2_2_2)-[:HAS_OBJECT]->(o_a2_2_4)
MERGE (rA2_2_5)-[:HAS_OBJECT]->(o_a2_2_5)

// HouseB1-1 (Merchant Morgan's House)
MERGE (o_b1_1_1:Object {name: "Trading Ledger", description: "Ledger for keeping trade records"})
MERGE (o_b1_1_2:Object {name: "Chest", description: "Chest for storing valuable items"})
MERGE (o_b1_1_3:Object {name: "Bed", description: "Luxurious bed with fine linens"})
MERGE (o_b1_1_4:Object {name: "Dining Table", description: "Large dining table"})
MERGE (o_b1_1_5:Object {name: "Bookshelf", description: "Bookshelf filled with trade books"})
MERGE (rB1_1_1)-[:HAS_OBJECT]->(o_b1_1_1)
MERGE (rB1_1_2)-[:HAS_OBJECT]->(o_b1_1_3)
MERGE (rB1_1_3)-[:HAS_OBJECT]->(o_b1_1_4)
MERGE (rB1_1_4)-[:HAS_OBJECT]->(o_b1_1_5)
MERGE (rB1_1_5)-[:HAS_OBJECT]->(o_b1_1_2)

// HouseB1-2 (Guard Captain Garen's House)
MERGE (o_b1_2_1:Object {name: "Armor Stand", description: "Stand for displaying armor"})
MERGE (o_b1_2_2:Object {name: "Weapon Rack", description: "Rack for storing weapons"})
MERGE (o_b1_2_3:Object {name: "Bed", description: "Sturdy bed with military-style linens"})
MERGE (o_b1_2_4:Object {name: "Training Dummy", description: "Dummy for training exercises"})
MERGE (o_b1_2_5:Object {name: "Dining Table", description: "Simple dining table"})
MERGE (rB1_2_1)-[:HAS_OBJECT]->(o_b1_2_1)
MERGE (rB1_2_1)-[:HAS_OBJECT]->(o_b1_2_2)
MERGE (rB1_2_2)-[:HAS_OBJECT]->(o_b1_2_3)
MERGE (rB1_2_3)-[:HAS_OBJECT]->(o_b1_2_4)
MERGE (rB1_2_5)-[:HAS_OBJECT]->(o_b1_2_5)

// HouseC1-1 (Carpenter Colin's House)
MERGE (o_c1_1_1:Object {name: "Workbench", description: "Workbench for carpentry"})
MERGE (o_c1_1_2:Object {name: "Toolbox", description: "Box containing carpentry tools"})
MERGE (o_c1_1_3:Object {name: "Bed", description: "Simple bed with basic linens"})
MERGE (o_c1_1_4:Object {name: "Wooden Chair", description: "Handcrafted wooden chair"})
MERGE (o_c1_1_5:Object {name: "Wooden Table", description: "Handcrafted wooden table"})
MERGE (rC1_1_1)-[:HAS_OBJECT]->(o_c1_1_1)
MERGE (rC1_1_2)-[:HAS_OBJECT]->(o_c1_1_3)
MERGE (rC1_1_3)-[:HAS_OBJECT]->(o_c1_1_4)
MERGE (rC1_1_4)-[:HAS_OBJECT]->(o_c1_1_2)
MERGE (rC1_1_5)-[:HAS_OBJECT]->(o_c1_1_5)

// HouseC1-2 (Tailor Talia's House)
MERGE (o_c1_2_1:Object {name: "Sewing Machine", description: "Sewing machine for tailoring"})
MERGE (o_c1_2_2:Object {name: "Fabric Roll", description: "Rolls of fabric for making clothes"})
MERGE (o_c1_2_3:Object {name: "Mannequin", description: "Mannequin for displaying clothes"})
MERGE (o_c1_2_4:Object {name: "Bed", description: "Comfortable bed with soft linens"})
MERGE (o_c1_2_5:Object {name: "Ironing Board", description: "Board for ironing clothes"})
MERGE (rC1_2_1)-[:HAS_OBJECT]->(o_c1_2_1)
MERGE (rC1_2_1)-[:HAS_OBJECT]->(o_c1_2_2)
MERGE (rC1_2_2)-[:HAS_OBJECT]->(o_c1_2_3)
MERGE (rC1_2_2)-[:HAS_OBJECT]->(o_c1_2_4)
MERGE (rC1_2_3)-[:HAS_OBJECT]->(o_c1_2_5)

// HouseC2-1 (Baker Bella's House)
MERGE (o_c2_1_1:Object {name: "Oven", description: "Large oven for baking"})
MERGE (o_c2_1_2:Object {name: "Mixing Bowl", description: "Bowl for mixing ingredients"})
MERGE (o_c2_1_3:Object {name: "Bread Rack", description: "Rack for cooling bread"})
MERGE (o_c2_1_4:Object {name: "Bed", description: "Comfortable bed with warm blankets"})
MERGE (o_c2_1_5:Object {name: "Dining Table", description: "Simple dining table"})
MERGE (rC2_1_1)-[:HAS_OBJECT]->(o_c2_1_1)
MERGE (rC2_1_1)-[:HAS_OBJECT]->(o_c2_1_2)
MERGE (rC2_1_1)-[:HAS_OBJECT]->(o_c2_1_3)
MERGE (rC2_1_2)-[:HAS_OBJECT]->(o_c2_1_4)
MERGE (rC2_1_3)-[:HAS_OBJECT]->(o_c2_1_5)

// HouseC2-2 (Fisherman Finn's House)
MERGE (o_c2_2_1:Object {name: "Fishing Net", description: "Net for catching fish"})
MERGE (o_c2_2_2:Object {name: "Fishing Rod", description: "Rod for fishing"})
MERGE (o_c2_2_3:Object {name: "Boat", description: "Small fishing boat"})
MERGE (o_c2_2_4:Object {name: "Bed", description: "Simple bed with basic linens"})
MERGE (o_c2_2_5:Object {name: "Dining Table", description: "Sturdy wooden table"})
MERGE (rC2_2_1)-[:HAS_OBJECT]->(o_c2_2_1)
MERGE (rC2_2_1)-[:HAS_OBJECT]->(o_c2_2_2)
MERGE (rC2_2_1)-[:HAS_OBJECT]->(o_c2_2_3)
MERGE (rC2_2_2)-[:HAS_OBJECT]->(o_c2_2_4)
MERGE (rC2_2_3)-[:HAS_OBJECT]->(o_c2_2_5)

// HouseD1-1 (Shopkeeper Sara's Shop)
MERGE (o_d1_1_1:Object {name: "Counter", description: "Counter for serving customers"})
MERGE (o_d1_1_2:Object {name: "Shelves", description: "Shelves for displaying goods"})
MERGE (o_d1_1_3:Object {name: "Storage Boxes", description: "Boxes for storing stock"})
MERGE (o_d1_1_4:Object {name: "Bed", description: "Simple bed with basic linens"})
MERGE (o_d1_1_5:Object {name: "Cash Register", description: "Register for handling transactions"})
MERGE (rD1_1_1)-[:HAS_OBJECT]->(o_d1_1_1)
MERGE (rD1_1_1)-[:HAS_OBJECT]->(o_d1_1_2)
MERGE (rD1_1_2)-[:HAS_OBJECT]->(o_d1_1_3)
MERGE (rD1_1_3)-[:HAS_OBJECT]->(o_d1_1_4)
MERGE (rD1_1_5)-[:HAS_OBJECT]->(o_d1_1_5)

// HouseD1-2 (Innkeeper Ian's Inn)
MERGE (o_d1_2_1:Object {name: "Bar Counter", description: "Counter for serving drinks"})
MERGE (o_d1_2_2:Object {name: "Table", description: "Dining tables"})
MERGE (o_d1_2_3:Object {name: "Bed", description: "Beds in guest rooms"})
MERGE (o_d1_2_4:Object {name: "Fireplace", description: "Cozy fireplace in the common room"})
MERGE (o_d1_2_5:Object {name: "Cooking Pot", description: "Pot for cooking meals"})
MERGE (rD1_2_1)-[:HAS_OBJECT]->(o_d1_2_1)
MERGE (rD1_2_2)-[:HAS_OBJECT]->(o_d1_2_2)
MERGE (rD1_2_2)-[:HAS_OBJECT]->(o_d1_2_3)
MERGE (rD1_2_1)-[:HAS_OBJECT]->(o_d1_2_4)
MERGE (rD1_2_3)-[:HAS_OBJECT]->(o_d1_2_5)

// HouseD2-1 (Craftsman Caleb's Workshop)
MERGE (o_d2_1_1:Object {name: "Workbench", description: "Workbench for crafting items"})
MERGE (o_d2_1_2:Object {name: "Toolbox", description: "Box containing various tools"})
MERGE (o_d2_1_3:Object {name: "Bed", description: "Simple bed with basic linens"})
MERGE (o_d2_1_4:Object {name: "Wooden Chair", description: "Handcrafted wooden chair"})
MERGE (o_d2_1_5:Object {name: "Wooden Table", description: "Handcrafted wooden table"})
MERGE (rD2_1_1)-[:HAS_OBJECT]->(o_d2_1_1)
MERGE (rD2_1_1)-[:HAS_OBJECT]->(o_d2_1_2)
MERGE (rD2_1_2)-[:HAS_OBJECT]->(o_d2_1_3)
MERGE (rD2_1_3)-[:HAS_OBJECT]->(o_d2_1_4)
MERGE (rD2_1_4)-[:HAS_OBJECT]->(o_d2_1_5)

// HouseD2-2 (Alchemist Alana's Alchemy Shop)
MERGE (o_d2_2_1:Object {name: "Alchemy Table", description: "Table for mixing potions"})
MERGE (o_d2_2_2:Object {name: "Herb Cabinet", description: "Cabinet for storing herbs"})
MERGE (o_d2_2_3:Object {name: "Mortar and Pestle", description: "Used for grinding herbs"})
MERGE (o_d2_2_4:Object {name: "Bed", description: "Comfortable bed with soft linens"})
MERGE (o_d2_2_5:Object {name: "Bookshelf", description: "Shelf filled with alchemical texts"})
MERGE (rD2_2_1)-[:HAS_OBJECT]->(o_d2_2_1)
MERGE (rD2_2_1)-[:HAS_OBJECT]->(o_d2_2_2)
MERGE (rD2_2_1)-[:HAS_OBJECT]->(o_d2_2_3)
MERGE (rD2_2_2)-[:HAS_OBJECT]->(o_d2_2_4)
MERGE (rD2_2_2)-[:HAS_OBJECT]->(o_d2_2_5)

// HouseE1-1 (Sailor Sam's House)
MERGE (o_e1_1_1:Object {name: "Fishing Net", description: "Net for catching fish"})
MERGE (o_e1_1_2:Object {name: "Fishing Rod", description: "Rod for fishing"})
MERGE (o_e1_1_3:Object {name: "Boat", description: "Small fishing boat"})
MERGE (o_e1_1_4:Object {name: "Bed", description: "Simple bed with basic linens"})
MERGE (o_e1_1_5:Object {name: "Dining Table", description: "Sturdy wooden table"})
MERGE (rE1_1_1)-[:HAS_OBJECT]->(o_e1_1_1)
MERGE (rE1_1_1)-[:HAS_OBJECT]->(o_e1_1_2)
MERGE (rE1_1_1)-[:HAS_OBJECT]->(o_e1_1_3)
MERGE (rE1_1_2)-[:HAS_OBJECT]->(o_e1_1_4)
MERGE (rE1_1_3)-[:HAS_OBJECT]->(o_e1_1_5)

// HouseE1-2 (Harbormaster Hank's House)
MERGE (o_e1_2_1:Object {name: "Logbook", description: "Logbook for recording ship arrivals and departures"})
MERGE (o_e1_2_2:Object {name: "Map", description: "Map of the harbor and surrounding waters"})
MERGE (o_e1_2_3:Object {name: "Desk", description: "Large wooden desk"})
MERGE (o_e1_2_4:Object {name: "Bed", description: "Comfortable bed with soft linens"})
MERGE (o_e1_2_5:Object {name: "Dining Table", description: "Simple dining table"})
MERGE (rE1_2_1)-[:HAS_OBJECT]->(o_e1_2_1)
MERGE (rE1_2_1)-[:HAS_OBJECT]->(o_e1_2_2)
MERGE (rE1_2_1)-[:HAS_OBJECT]->(o_e1_2_3)
MERGE (rE1_2_2)-[:HAS_OBJECT]->(o_e1_2_4)
MERGE (rE1_2_3)-[:HAS_OBJECT]->(o_e1_2_5)































MERGE (w:World {name: "Rivenwood"})




// Create Essential Buildings as Sectors
MERGE (th:Sector {name: "Town Hall", description: "Central administrative building where the town's leaders meet and manage town affairs"})
MERGE (gb:Sector {name: "Guard Barracks", description: "Housing for the town's guard force, equipped with training grounds"})
MERGE (wt1:Sector {name: "Watchtower North", description: "Watchtower for lookout and defense at the northern perimeter"})
MERGE (wt2:Sector {name: "Watchtower South", description: "Watchtower for lookout and defense at the southern perimeter"})
MERGE (mp:Sector {name: "Marketplace", description: "Open area where traders and merchants set up stalls to sell goods"})
MERGE (wh:Sector {name: "Warehouse", description: "Storage for goods and trade supplies, especially those arriving by ship"})
MERGE (bf:Sector {name: "Blacksmith Forge", description: "Essential for producing and repairing tools, weapons, and armor"})
MERGE (tv:Sector {name: "Tavern", description: "Social gathering place for residents and travelers, serving food and drink"})
MERGE (ch:Sector {name: "Church", description: "Place of worship and community gathering, often the heart of social life"})
MERGE (sh:Sector {name: "Schoolhouse", description: "Building for educating the children of the town"})
MERGE (ap:Sector {name: "Apothecary", description: "Provides medicinal herbs and remedies, crucial for health care"})
MERGE (bs:Sector {name: "Butcher Shop", description: "Prepares and sells meat products"})
MERGE (ml:Sector {name: "Mill", description: "Grinds grain into flour, essential for food production"})
MERGE (sy:Sector {name: "Shipyard", description: "Facility for building and repairing ships"})
MERGE (fm:Sector {name: "Fish Market", description: "Sells fresh fish and seafood, crucial for the town's diet"})
MERGE (hm:Sector {name: "Harbormaster’s Office", description: "Manages dock operations and maritime activities"})

// Establish Relationships between World and Essential Buildings
MERGE (w)-[:HAS_SECTOR]->(th)
MERGE (w)-[:HAS_SECTOR]->(gb)
MERGE (w)-[:HAS_SECTOR]->(wt1)
MERGE (w)-[:HAS_SECTOR]->(wt2)
MERGE (w)-[:HAS_SECTOR]->(mp)
MERGE (w)-[:HAS_SECTOR]->(wh)
MERGE (w)-[:HAS_SECTOR]->(bf)
MERGE (w)-[:HAS_SECTOR]->(tv)
MERGE (w)-[:HAS_SECTOR]->(ch)
MERGE (w)-[:HAS_SECTOR]->(sh)
MERGE (w)-[:HAS_SECTOR]->(ap)
MERGE (w)-[:HAS_SECTOR]->(bs)
MERGE (w)-[:HAS_SECTOR]->(ml)
MERGE (w)-[:HAS_SECTOR]->(sy)
MERGE (w)-[:HAS_SECTOR]->(fm)
MERGE (w)-[:HAS_SECTOR]->(hm)

// Create Arenas within Essential Buildings (Rooms or Functional Areas)
MERGE (rth_1:Arena {name: "Meeting Hall", description: "Main meeting hall in the Town Hall"})
MERGE (rth_2:Arena {name: "Office", description: "Office in the Town Hall"})
MERGE (rth_3:Arena {name: "Records Room", description: "Records Room in the Town Hall"})
MERGE (th)-[:HAS_ARENA]->(rth_1)
MERGE (th)-[:HAS_ARENA]->(rth_2)
MERGE (th)-[:HAS_ARENA]->(rth_3)

MERGE (rgb_1:Arena {name: "Barracks", description: "Sleeping quarters for the guards"})
MERGE (rgb_2:Arena {name: "Training Ground", description: "Training ground for the guards"})
MERGE (rgb_3:Arena {name: "Armory", description: "Armory in the Guard Barracks"})
MERGE (gb)-[:HAS_ARENA]->(rgb_1)
MERGE (gb)-[:HAS_ARENA]->(rgb_2)
MERGE (gb)-[:HAS_ARENA]->(rgb_3)

MERGE (rwt1_1:Arena {name: "Observation Deck", description: "Observation Deck of the North Watchtower"})
MERGE (rwt1_2:Arena {name: "Guard Room", description: "Guard Room of the North Watchtower"})
MERGE (wt1)-[:HAS_ARENA]->(rwt1_1)
MERGE (wt1)-[:HAS_ARENA]->(rwt1_2)

MERGE (rwt2_1:Arena {name: "Observation Deck", description: "Observation Deck of the South Watchtower"})
MERGE (rwt2_2:Arena {name: "Guard Room", description: "Guard Room of the South Watchtower"})
MERGE (wt2)-[:HAS_ARENA]->(rwt2_1)
MERGE (wt2)-[:HAS_ARENA]->(rwt2_2)

MERGE (rmp_1:Arena {name: "Stalls", description: "Stalls in the Marketplace"})
MERGE (rmp_2:Arena {name: "Central Plaza", description: "Central Plaza of the Marketplace"})
MERGE (mp)-[:HAS_ARENA]->(rmp_1)
MERGE (mp)-[:HAS_ARENA]->(rmp_2)

MERGE (rwh_1:Arena {name: "Storage Room", description: "Storage Room in the Warehouse"})
MERGE (rwh_2:Arena {name: "Loading Dock", description: "Loading Dock in the Warehouse"})
MERGE (wh)-[:HAS_ARENA]->(rwh_1)
MERGE (wh)-[:HAS_ARENA]->(rwh_2)

MERGE (rbf_1:Arena {name: "Forge Room", description: "Forge Room in the Blacksmith Forge"})
MERGE (rbf_2:Arena {name: "Storage Room", description: "Storage Room in the Blacksmith Forge"})
MERGE (rbf_3:Arena {name: "Workshop", description: "Workshop in the Blacksmith Forge"})
MERGE (bf)-[:HAS_ARENA]->(rbf_1)
MERGE (bf)-[:HAS_ARENA]->(rbf_2)
MERGE (bf)-[:HAS_ARENA]->(rbf_3)

MERGE (rtv_1:Arena {name: "Common Room", description: "Common Room in the Tavern"})
MERGE (rtv_2:Arena {name: "Dining Area", description: "Dining Area in the Tavern"})
MERGE (rtv_3:Arena {name: "Kitchen", description: "Kitchen in the Tavern"})
MERGE (rtv_4:Arena {name: "Guest Rooms", description: "Guest Rooms in the Tavern"})
MERGE (tv)-[:HAS_ARENA]->(rtv_1)
MERGE (tv)-[:HAS_ARENA]->(rtv_2)
MERGE (tv)-[:HAS_ARENA]->(rtv_3)
MERGE (tv)-[:HAS_ARENA]->(rtv_4)

MERGE (rch_1:Arena {name: "Nave", description: "Nave in the Church"})
MERGE (rch_2:Arena {name: "Altar", description: "Altar in the Church"})
MERGE (rch_3:Arena {name: "Bell Tower", description: "Bell Tower in the Church"})
MERGE (ch)-[:HAS_ARENA]->(rch_1)
MERGE (ch)-[:HAS_ARENA]->(rch_2)
MERGE (ch)-[:HAS_ARENA]->(rch_3)

MERGE (rsh_1:Arena {name: "Classroom", description: "Classroom in the Schoolhouse"})
MERGE (rsh_2:Arena {name: "Library", description: "Library in the Schoolhouse"})
MERGE (rsh_3:Arena {name: "Playground", description: "Playground in the Schoolhouse"})
MERGE (sh)-[:HAS_ARENA]->(rsh_1)
MERGE (sh)-[:HAS_ARENA]->(rsh_2)
MERGE (sh)-[:HAS_ARENA]->(rsh_3)

MERGE (rap_1:Arena {name: "Herb Room", description: "Herb Room in the Apothecary"})
MERGE (rap_2:Arena {name: "Consultation Room", description: "Consultation Room in the Apothecary"})
MERGE (rap_3:Arena {name: "Storage Room", description: "Storage Room in the Apothecary"})
MERGE (ap)-[:HAS_ARENA]->(rap_1)
MERGE (ap)-[:HAS_ARENA]->(rap_2)
MERGE (ap)-[:HAS_ARENA]->(rap_3)

MERGE (rbs_1:Arena {name: "Butchery", description: "Butchery in the Butcher Shop"})
MERGE (rbs_2:Arena {name: "Storage Room", description: "Storage Room in the Butcher Shop"})
MERGE (rbs_3:Arena {name: "Shop Floor", description: "Shop Floor in the Butcher Shop"})
MERGE (bs)-[:HAS_ARENA]->(rbs_1)
MERGE (bs)-[:HAS_ARENA]->(rbs_2)
MERGE (bs)-[:HAS_ARENA]->(rbs_3)

MERGE (rml_1:Arena {name: "Mill Room", description: "Mill Room in the Mill"})
MERGE (rml_2:Arena {name: "Storage Room", description: "Storage Room in the Mill"})
MERGE (rml_3:Arena {name: "Office", description: "Office in the Mill"})
MERGE (ml)-[:HAS_ARENA]->(rml_1)
MERGE (ml)-[:HAS_ARENA]->(rml_2)
MERGE (ml)-[:HAS_ARENA]->(rml_3)

MERGE (rsy_1:Arena {name: "Ship Building Area", description: "Ship Building Area in the Shipyard"})
MERGE (rsy_2:Arena {name: "Repair Dock", description: "Repair Dock in the Shipyard"})
MERGE (rsy_3:Arena {name: "Storage Room", description: "Storage Room in the Shipyard"})
MERGE (sy)-[:HAS_ARENA]->(rsy_1)
MERGE (sy)-[:HAS_ARENA]->(rsy_2)
MERGE (sy)-[:HAS_ARENA]->(rsy_3)

MERGE (rfm_1:Arena {name: "Fish Stalls", description: "Fish Stalls in the Fish Market"})
MERGE (rfm_2:Arena {name: "Auction Area", description: "Auction Area in the Fish Market"})
MERGE (rfm_3:Arena {name: "Storage Room", description: "Storage Room in the Fish Market"})
MERGE (fm)-[:HAS_ARENA]->(rfm_1)
MERGE (fm)-[:HAS_ARENA]->(rfm_2)
MERGE (fm)-[:HAS_ARENA]->(rfm_3)

MERGE (rhm_1:Arena {name: "Office", description: "Office of the Harbormaster"})
MERGE (rhm_2:Arena {name: "Storage Room", description: "Storage Room in the Harbormaster’s Office"})
MERGE (rhm_3:Arena {name: "Meeting Room", description: "Meeting Room in the Harbormaster’s Office"})
MERGE (hm)-[:HAS_ARENA]->(rhm_1)
MERGE (hm)-[:HAS_ARENA]->(rhm_2)
MERGE (hm)-[:HAS_ARENA]->(rhm_3)

// Create Roads to Connect Essential Buildings
MERGE (road4:Road {name: "Admin Road", description: "Road connecting administrative buildings"})
MERGE (road5:Road {name: "Guard Road", description: "Road leading to the guard barracks and watchtowers"})
MERGE (road6:Road {name: "Market Road", description: "Road leading to the marketplace and related sectors"})
MERGE (road7:Road {name: "Harbor Road", description: "Road connecting to the harbor and related sectors"})

// Connect Roads to Essential Buildings
MERGE (road4)-[:CONNECTS_TO]->(th)
MERGE (road4)-[:CONNECTS_TO]->(gb)
MERGE (road5)-[:CONNECTS_TO]->(wt1)
MERGE (road5)-[:CONNECTS_TO]->(wt2)
MERGE (road6)-[:CONNECTS_TO]->(mp)
MERGE (road6)-[:CONNECTS_TO]->(wh)
MERGE (road6)-[:CONNECTS_TO]->(bf)
MERGE (road6)-[:CONNECTS_TO]->(tv)
MERGE (road6)-[:CONNECTS_TO]->(ch)
MERGE (road6)-[:CONNECTS_TO]->(sh)
MERGE (road6)-[:CONNECTS_TO]->(ap)
MERGE (road6)-[:CONNECTS_TO]->(bs)
MERGE (road7)-[:CONNECTS_TO]->(ml)
MERGE (road7)-[:CONNECTS_TO]->(sy)
MERGE (road7)-[:CONNECTS_TO]->(fm)
MERGE (road7)-[:CONNECTS_TO]->(hm)

// Create Pathways to Connect Arenas within Essential Buildings
MERGE (pathTH:Pathway {name: "Pathway TH", description: "Pathway connecting rooms in Town Hall"})
MERGE (pathGB:Pathway {name: "Pathway GB", description: "Pathway connecting rooms in Guard Barracks"})
MERGE (pathWT1:Pathway {name: "Pathway WT1", description: "Pathway connecting rooms in North Watchtower"})
MERGE (pathWT2:Pathway {name: "Pathway WT2", description: "Pathway connecting rooms in South Watchtower"})
MERGE (pathMP:Pathway {name: "Pathway MP", description: "Pathway connecting areas in Marketplace"})
MERGE (pathWH:Pathway {name: "Pathway WH", description: "Pathway connecting areas in Warehouse"})
MERGE (pathBF:Pathway {name: "Pathway BF", description: "Pathway connecting areas in Blacksmith Forge"})
MERGE (pathTV:Pathway {name: "Pathway TV", description: "Pathway connecting rooms in Tavern"})
MERGE (pathCH:Pathway {name: "Pathway CH", description: "Pathway connecting areas in Church"})
MERGE (pathSH:Pathway {name: "Pathway SH", description: "Pathway connecting rooms in Schoolhouse"})
MERGE (pathAP:Pathway {name: "Pathway AP", description: "Pathway connecting rooms in Apothecary"})
MERGE (pathBS:Pathway {name: "Pathway BS", description: "Pathway connecting areas in Butcher Shop"})
MERGE (pathML:Pathway {name: "Pathway ML", description: "Pathway connecting areas in Mill"})
MERGE (pathSY:Pathway {name: "Pathway SY", description: "Pathway connecting areas in Shipyard"})
MERGE (pathFM:Pathway {name: "Pathway FM", description: "Pathway connecting areas in Fish Market"})
MERGE (pathHM:Pathway {name: "Pathway HM", description: "Pathway connecting areas in Harbormaster’s Office"})

// Connect Pathways to Arenas within Essential Buildings
MERGE (pathTH)-[:CONNECTS_TO]->(rth_1)
MERGE (pathTH)-[:CONNECTS_TO]->(rth_2)
MERGE (pathTH)-[:CONNECTS_TO]->(rth_3)

MERGE (pathGB)-[:CONNECTS_TO]->(rgb_1)
MERGE (pathGB)-[:CONNECTS_TO]->(rgb_2)
MERGE (pathGB)-[:CONNECTS_TO]->(rgb_3)

MERGE (pathWT1)-[:CONNECTS_TO]->(rwt1_1)
MERGE (pathWT1)-[:CONNECTS_TO]->(rwt1_2)

MERGE (pathWT2)-[:CONNECTS_TO]->(rwt2_1)
MERGE (pathWT2)-[:CONNECTS_TO]->(rwt2_2)

MERGE (pathMP)-[:CONNECTS_TO]->(rmp_1)
MERGE (pathMP)-[:CONNECTS_TO]->(rmp_2)

MERGE (pathWH)-[:CONNECTS_TO]->(rwh_1)
MERGE (pathWH)-[:CONNECTS_TO]->(rwh_2)

MERGE (pathBF)-[:CONNECTS_TO]->(rbf_1)
MERGE (pathBF)-[:CONNECTS_TO]->(rbf_2)
MERGE (pathBF)-[:CONNECTS_TO]->(rbf_3)

MERGE (pathTV)-[:CONNECTS_TO]->(rtv_1)
MERGE (pathTV)-[:CONNECTS_TO]->(rtv_2)
MERGE (pathTV)-[:CONNECTS_TO]->(rtv_3)
MERGE (pathTV)-[:CONNECTS_TO]->(rtv_4)

MERGE (pathCH)-[:CONNECTS_TO]->(rch_1)
MERGE (pathCH)-[:CONNECTS_TO]->(rch_2)
MERGE (pathCH)-[:CONNECTS_TO]->(rch_3)

MERGE (pathSH)-[:CONNECTS_TO]->(rsh_1)
MERGE (pathSH)-[:CONNECTS_TO]->(rsh_2)
MERGE (pathSH)-[:CONNECTS_TO]->(rsh_3)

MERGE (pathAP)-[:CONNECTS_TO]->(rap_1)
MERGE (pathAP)-[:CONNECTS_TO]->(rap_2)
MERGE (pathAP)-[:CONNECTS_TO]->(rap_3)

MERGE (pathBS)-[:CONNECTS_TO]->(rbs_1)
MERGE (pathBS)-[:CONNECTS_TO]->(rbs_2)
MERGE (pathBS)-[:CONNECTS_TO]->(rbs_3)

MERGE (pathML)-[:CONNECTS_TO]->(rml_1)
MERGE (pathML)-[:CONNECTS_TO]->(rml_2)
MERGE (pathML)-[:CONNECTS_TO]->(rml_3)

MERGE (pathSY)-[:CONNECTS_TO]->(rsy_1)
MERGE (pathSY)-[:CONNECTS_TO]->(rsy_2)
MERGE (pathSY)-[:CONNECTS_TO]->(rsy_3)

MERGE (pathFM)-[:CONNECTS_TO]->(rfm_1)
MERGE (pathFM)-[:CONNECTS_TO]->(rfm_2)
MERGE (pathFM)-[:CONNECTS_TO]->(rfm_3)

MERGE (pathHM)-[:CONNECTS_TO]->(rhm_1)
MERGE (pathHM)-[:CONNECTS_TO]->(rhm_2)
MERGE (pathHM)-[:CONNECTS_TO]->(rhm_3)

// Create Essential Objects for Arenas
// Town Hall
MERGE (o_th_1:Object {name: "Table", description: "Large meeting table"})
MERGE (o_th_2:Object {name: "Chair", description: "Comfortable chairs for meetings"})
MERGE (o_th_3:Object {name: "Bookshelf", description: "Bookshelf containing town records"})
MERGE (rth_1)-[:HAS_OBJECT]->(o_th_1)
MERGE (rth_1)-[:HAS_OBJECT]->(o_th_2)
MERGE (rth_3)-[:HAS_OBJECT]->(o_th_3)

// Guard Barracks
MERGE (o_gb_1:Object {name: "Bunk Bed", description: "Beds for the guards"})
MERGE (o_gb_2:Object {name: "Weapon Rack", description: "Rack for storing weapons"})
MERGE (o_gb_3:Object {name: "Training Dummy", description: "Dummy for training exercises"})
MERGE (rgb_1)-[:HAS_OBJECT]->(o_gb_1)
MERGE (rgb_2)-[:HAS_OBJECT]->(o_gb_3)
MERGE (rgb_3)-[:HAS_OBJECT]->(o_gb_2)

// Watchtowers
MERGE (o_wt_1:Object {name: "Telescope", description: "Telescope for observation"})
MERGE (o_wt_2:Object {name: "Signal Torch", description: "Torch for signaling"})
MERGE (rwt1_1)-[:HAS_OBJECT]->(o_wt_1)
MERGE (rwt1_1)-[:HAS_OBJECT]->(o_wt_2)
MERGE (rwt2_1)-[:HAS_OBJECT]->(o_wt_1)
MERGE (rwt2_1)-[:HAS_OBJECT]->(o_wt_2)

// Marketplace
MERGE (o_mp_1:Object {name: "Market Stall", description: "Stalls for vendors"})
MERGE (o_mp_2:Object {name: "Fountain", description: "Central fountain in the marketplace"})
MERGE (rmp_1)-[:HAS_OBJECT]->(o_mp_1)
MERGE (rmp_2)-[:HAS_OBJECT]->(o_mp_2)

// Warehouse
MERGE (o_wh_1:Object {name: "Crate", description: "Storage crates"})
MERGE (o_wh_2:Object {name: "Pallet", description: "Wooden pallets for goods"})
MERGE (rwh_1)-[:HAS_OBJECT]->(o_wh_1)
MERGE (rwh_1)-[:HAS_OBJECT]->(o_wh_2)

// Blacksmith Forge
MERGE (o_bf_1:Object {name: "Anvil", description: "Anvil for blacksmithing"})
MERGE (o_bf_2:Object {name: "Forge", description: "Forge for heating metal"})
MERGE (o_bf_3:Object {name: "Hammer", description: "Hammer for blacksmithing"})
MERGE (rbf_1)-[:HAS_OBJECT]->(o_bf_1)
MERGE (rbf_1)-[:HAS_OBJECT]->(o_bf_2)
MERGE (rbf_1)-[:HAS_OBJECT]->(o_bf_3)

// Tavern
MERGE (o_tv_1:Object {name: "Bar Counter", description: "Counter for serving drinks"})
MERGE (o_tv_2:Object {name: "Table", description: "Dining tables"})
MERGE (o_tv_3:Object {name: "Bed", description: "Beds in guest rooms"})
MERGE (rtv_1)-[:HAS_OBJECT]->(o_tv_1)
MERGE (rtv_2)-[:HAS_OBJECT]->(o_tv_2)
MERGE (rtv_4)-[:HAS_OBJECT]->(o_tv_3)

// Church
MERGE (o_ch_1:Object {name: "Altar", description: "Altar for religious ceremonies"})
MERGE (o_ch_2:Object {name: "Pew", description: "Seating for congregation"})
MERGE (rch_2)-[:HAS_OBJECT]->(o_ch_1)
MERGE (rch_1)-[:HAS_OBJECT]->(o_ch_2)

// Schoolhouse
MERGE (o_sh_1:Object {name: "Desk", description: "Desks for students"})
MERGE (o_sh_2:Object {name: "Blackboard", description: "Blackboard for teaching"})
MERGE (rsh_1)-[:HAS_OBJECT]->(o_sh_1)
MERGE (rsh_1)-[:HAS_OBJECT]->(o_sh_2)

// Apothecary
MERGE (o_ap_1:Object {name: "Herb Cabinet", description: "Cabinet for storing herbs"})
MERGE (o_ap_2:Object {name: "Mortar and Pestle", description: "Used for grinding herbs"})
MERGE (rap_1)-[:HAS_OBJECT]->(o_ap_1)
MERGE (rap_1)-[:HAS_OBJECT]->(o_ap_2)

// Butcher Shop
MERGE (o_bs_1:Object {name: "Butcher Block", description: "Block for cutting meat"})
MERGE (o_bs_2:Object {name: "Meat Hook", description: "Hooks for hanging meat"})
MERGE (rbs_1)-[:HAS_OBJECT]->(o_bs_1)
MERGE (rbs_1)-[:HAS_OBJECT]->(o_bs_2)

// Mill
MERGE (o_ml_1:Object {name: "Millstone", description: "Millstone for grinding grain"})
MERGE (o_ml_2:Object {name: "Sack of Grain", description: "Sacks of grain for milling"})
MERGE (rml_1)-[:HAS_OBJECT]->(o_ml_1)
MERGE (rml_1)-[:HAS_OBJECT]->(o_ml_2)

// Shipyard
MERGE (o_sy_1:Object {name: "Dry Dock", description: "Dry dock for shipbuilding"})
MERGE (o_sy_2:Object {name: "Crane", description: "Crane for lifting heavy parts"})
MERGE (rsy_1)-[:HAS_OBJECT]->(o_sy_1)
MERGE (rsy_1)-[:HAS_OBJECT]->(o_sy_2)

// Fish Market
MERGE (o_fm_1:Object {name: "Fish Stall", description: "Stalls for selling fish"})
MERGE (o_fm_2:Object {name: "Ice Box", description: "Boxes for keeping fish fresh"})
MERGE (rfm_1)-[:HAS_OBJECT]->(o_fm_1)
MERGE (rfm_1)-[:HAS_OBJECT]->(o_fm_2)

// Harbormaster’s Office
MERGE (o_hm_1:Object {name: "Logbook", description: "Logbook for recording ship arrivals and departures"})
MERGE (o_hm_2:Object {name: "Map", description: "Map of the harbor and surrounding waters"})
MERGE (rhm_1)-[:HAS_OBJECT]->(o_hm_1)
MERGE (rhm_1)-[:HAS_OBJECT]->(o_hm_2)

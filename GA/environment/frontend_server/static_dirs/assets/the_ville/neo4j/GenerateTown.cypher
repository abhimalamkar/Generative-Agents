// Create World
MERGE (w:World {name: "Rivenwood"})

// Create Buildings as Sectors
MERGE (hA1_1:Sector {name: "Elder Elara's House", owner: "Elder Elara", description: "Elder Elara's House"})
MERGE (hA1_2:Sector {name: "Blacksmith Barin's House", owner: "Blacksmith Barin", description: "Blacksmith Barin's House"})
MERGE (hA2_1:Sector {name: "Farmer Finn's House", owner: "Farmer Finn", description: "Farmer Finn's House"})
MERGE (hA2_2:Sector {name: "Healer Hera's House", owner: "Healer Hera", description: "Healer Hera's House"})
MERGE (hB1_1:Sector {name: "Merchant Morgan's House", owner: "Merchant Morgan", description: "Merchant Morgan's House"})
MERGE (hB1_2:Sector {name: "Guard Captain Garen's House", owner: "Guard Captain Garen", description: "Guard Captain Garen's House"})
MERGE (hC1_1:Sector {name: "Carpenter Colin's House", owner: "Carpenter Colin", description: "Carpenter Colin's House"})
MERGE (hC1_2:Sector {name: "Tailor Talia's House", owner: "Tailor Talia", description: "Tailor Talia's House"})
MERGE (hC2_1:Sector {name: "Baker Bella's House", owner: "Baker Bella", description: "Baker Bella's House"})
MERGE (hC2_2:Sector {name: "Fisherman Finn's House", owner: "Fisherman Finn", description: "Fisherman Finn's House"})
MERGE (hD1_1:Sector {name: "Shopkeeper Sara's Shop", owner: "Shopkeeper Sara", description: "Shopkeeper Sara's Shop"})
MERGE (hD1_2:Sector {name: "Innkeeper Ian's Inn", owner: "Innkeeper Ian", description: "Innkeeper Ian's Inn"})
MERGE (hD2_1:Sector {name: "Craftsman Caleb's Workshop", owner: "Craftsman Caleb", description: "Craftsman Caleb's Workshop"})
MERGE (hD2_2:Sector {name: "Alchemist Alana's Alchemy Shop", owner: "Alchemist Alana", description: "Alchemist Alana's Alchemy Shop"})
MERGE (hE1_1:Sector {name: "Sailor Sam's House", owner: "Sailor Sam", description: "Sailor Sam's House"})
MERGE (hE1_2:Sector {name: "Harbormaster Hank's House", owner: "Harbormaster Hank", description: "Harbormaster Hank's House"})

// Create People in the Town

// Elder Elara
MERGE (elara:Person {name: "Elder Elara", location: point({x: 100, y: 100, z: 0}), 
    personality_traits: ["wise", "kind", "patient"], 
    state_of_mind: "content", 
    memory_statements: ["Remembers the founding of Rivenwood", "Taught many generations of townsfolk"], 
    backstory: "Elder Elara has lived in Rivenwood since its founding. She is known for her wisdom and kindness, always willing to lend an ear or offer advice."})

// Blacksmith Barin
MERGE (barin:Person {name: "Blacksmith Barin", location: point({x: 700, y: 100, z: 0}), 
    personality_traits: ["strong", "hardworking", "blunt"], 
    state_of_mind: "focused", 
    memory_statements: ["Crafted the town's first iron gate", "Won a blacksmithing competition in a neighboring town"], 
    backstory: "Blacksmith Barin is known for his unmatched skill in metalwork. He is a hardworking and straightforward individual who takes great pride in his craft."})

// Farmer Finn
MERGE (finn:Person {name: "Farmer Finn", location: point({x: 1300, y: 100, z: 0}), 
    personality_traits: ["diligent", "friendly", "resourceful"], 
    state_of_mind: "happy", 
    memory_statements: ["Grew the largest pumpkin in town", "Helped build the town's community garden"], 
    backstory: "Farmer Finn is a dedicated farmer who loves the land and his community. He is always ready to lend a hand and share his agricultural knowledge."})

// Healer Hera
MERGE (hera:Person {name: "Healer Hera", location: point({x: 1900, y: 100, z: 0}), 
    personality_traits: ["compassionate", "knowledgeable", "calm"], 
    state_of_mind: "peaceful", 
    memory_statements: ["Healed the mayor's son from a severe illness", "Discovered a new medicinal herb"], 
    backstory: "Healer Hera is known for her extensive knowledge of herbs and healing. Her calm demeanor and compassionate nature make her a beloved figure in Rivenwood."})

// Merchant Morgan
MERGE (morgan:Person {name: "Merchant Morgan", location: point({x: 100, y: 800, z: 0}), 
    personality_traits: ["shrewd", "charismatic", "generous"], 
    state_of_mind: "satisfied", 
    memory_statements: ["Closed the largest trade deal in town history", "Donated goods to the town during a famine"], 
    backstory: "Merchant Morgan is a skilled trader with a keen eye for business. Despite his shrewd nature, he has a generous side, often helping those in need."})

// Guard Captain Garen
MERGE (garen:Person {name: "Guard Captain Garen", location: point({x: 700, y: 800, z: 0}), 
    personality_traits: ["brave", "loyal", "disciplined"], 
    state_of_mind: "alert", 
    memory_statements: ["Defended the town from bandits", "Trained the new recruits"], 
    backstory: "Guard Captain Garen is a highly respected figure in Rivenwood, known for his bravery and unwavering loyalty. He ensures the town's safety with a disciplined approach."})

// Carpenter Colin
MERGE (colin:Person {name: "Carpenter Colin", location: point({x: 1300, y: 800, z: 0}), 
    personality_traits: ["creative", "meticulous", "humble"], 
    state_of_mind: "content", 
    memory_statements: ["Built the town's first bridge", "Crafted beautiful furniture for the townsfolk"], 
    backstory: "Carpenter Colin is a talented craftsman who takes great pride in his work. His creativity and attention to detail are evident in everything he builds."})

// Tailor Talia
MERGE (talia:Person {name: "Tailor Talia", location: point({x: 1900, y: 800, z: 0}), 
    personality_traits: ["artistic", "patient", "perfectionist"], 
    state_of_mind: "inspired", 
    memory_statements: ["Designed the mayor's wedding dress", "Started a sewing class for children"], 
    backstory: "Tailor Talia is known for her artistic flair and perfectionism. Her patience and skill have made her the go-to tailor in Rivenwood."})

// Baker Bella
MERGE (bella:Person {name: "Baker Bella", location: point({x: 100, y: 1500, z: 0}), 
    personality_traits: ["cheerful", "generous", "hardworking"], 
    state_of_mind: "joyful", 
    memory_statements: ["Baked the largest cake for the town festival", "Provides bread for the town's less fortunate"], 
    backstory: "Baker Bella's cheerful demeanor and generosity have endeared her to the townsfolk. She is known for her delicious baked goods and her hardworking nature."})

// Fisherman Finn
MERGE (finn_fisher:Person {name: "Fisherman Finn", location: point({x: 700, y: 1500, z: 0}), 
    personality_traits: ["patient", "observant", "kind"], 
    state_of_mind: "calm", 
    memory_statements: ["Caught the biggest fish in the river", "Teaches children how to fish"], 
    backstory: "Fisherman Finn is a kind and patient individual who loves the tranquility of fishing. He enjoys sharing his knowledge with the younger generation."})

// Shopkeeper Sara
MERGE (sara:Person {name: "Shopkeeper Sara", location: point({x: 1300, y: 1500, z: 0}), 
    personality_traits: ["friendly", "organized", "trustworthy"], 
    state_of_mind: "satisfied", 
    memory_statements: ["Organized the town's first market day", "Always has the best deals in town"], 
    backstory: "Shopkeeper Sara is known for her friendly nature and organizational skills. Her shop is always well-stocked, and she is trusted by all her customers."})

// Innkeeper Ian
MERGE (ian:Person {name: "Innkeeper Ian", location: point({x: 1900, y: 1500, z: 0}), 
    personality_traits: ["hospitable", "charming", "efficient"], 
    state_of_mind: "busy", 
    memory_statements: ["Hosted a famous bard", "Renovated the inn to attract more guests"], 
    backstory: "Innkeeper Ian is known for his hospitality and charm. He runs the inn with efficiency and always ensures his guests have a pleasant stay."})

// Craftsman Caleb
MERGE (caleb:Person {name: "Craftsman Caleb", location: point({x: 100, y: 2200, z: 0}), 
    personality_traits: ["innovative", "dedicated", "thoughtful"], 
    state_of_mind: "focused", 
    memory_statements: ["Invented a new tool for crafting", "Built a community workshop"], 
    backstory: "Craftsman Caleb is an innovative and dedicated individual. His thoughtful nature is reflected in the quality of his work and his contributions to the community."})

// Alchemist Alana
MERGE (alana:Person {name: "Alchemist Alana", location: point({x: 700, y: 2200, z: 0}), 
    personality_traits: ["curious", "intelligent", "meticulous"], 
    state_of_mind: "curious", 
    memory_statements: ["Discovered a new potion recipe", "Helped the town during a plague"], 
    backstory: "Alchemist Alana is known for her curiosity and intelligence. Her meticulous approach to alchemy has led to many discoveries and helped the town in times of need."})

// Sailor Sam
MERGE (sam:Person {name: "Sailor Sam", location: point({x: 1300, y: 2200, z: 0}), 
    personality_traits: ["adventurous", "brave", "loyal"], 
    state_of_mind: "excited", 
    memory_statements: ["Survived a great storm at sea", "Discovered a new trading route"], 
    backstory: "Sailor Sam is an adventurous and brave individual who loves the sea. His loyalty to his crew and his town is unwavering, and he is always ready for the next adventure."})

// Harbormaster Hank
MERGE (hank:Person {name: "Harbormaster Hank", location: point({x: 1900, y: 2200, z: 0}), 
    personality_traits: ["authoritative", "organized", "fair"], 
    state_of_mind: "responsible", 
    memory_statements: ["Managed the harbor through a difficult season", "Implemented new safety protocols"], 
    backstory: "Harbormaster Hank is known for his authoritative and organized nature. He runs the harbor with fairness and efficiency, ensuring everything runs smoothly."})

// Establish Relationships between People and Sectors
MERGE (hA1_1)-[:HAS_PERSON]->(elara)
MERGE (hA1_2)-[:HAS_PERSON]->(barin)
MERGE (hA2_1)-[:HAS_PERSON]->(finn)
MERGE (hA2_2)-[:HAS_PERSON]->(hera)
MERGE (hB1_1)-[:HAS_PERSON]->(morgan)
MERGE (hB1_2)-[:HAS_PERSON]->(garen)
MERGE (hC1_1)-[:HAS_PERSON]->(colin)
MERGE (hC1_2)-[:HAS_PERSON]->(talia)
MERGE (hC2_1)-[:HAS_PERSON]->(bella)
MERGE (hC2_2)-[:HAS_PERSON]->(finn_fisher)
MERGE (hD1_1)-[:HAS_PERSON]->(sara)
MERGE (hD1_2)-[:HAS_PERSON]->(ian)
MERGE (hD2_1)-[:HAS_PERSON]->(caleb)
MERGE (hD2_2)-[:HAS_PERSON]->(alana)
MERGE (hE1_1)-[:HAS_PERSON]->(sam)
MERGE (hE1_2)-[:HAS_PERSON]->(hank)


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

// Create Arenas within Buildings (Rooms or Functional Areas) with Points
MERGE (rA1_1_1:Arena {name: "Living Room", description: "Living Room of Elder Elara's House", location: point({x: 0, y: 0, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA1_1_2:Arena {name: "Bedroom", description: "Bedroom of Elder Elara's House", location: point({x: 0, y: 200, z: 0}), dimensions: point({x: 150, y: 100, z: 100})})
MERGE (rA1_1_3:Arena {name: "Kitchen", description: "Kitchen of Elder Elara's House", location: point({x: 200, y: 0, z: 0}), dimensions: point({x: 150, y: 100, z: 100})})
MERGE (rA1_1_4:Arena {name: "Library", description: "Library of Elder Elara's House", location: point({x: 200, y: 200, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_1)
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_2)
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_3)
MERGE (hA1_1)-[:HAS_ARENA]->(rA1_1_4)

MERGE (rA1_2_1:Arena {name: "Forge", description: "Blacksmith Barin's Forge", location: point({x: 600, y: 0, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rA1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Blacksmith Barin", location: point({x: 600, y: 300, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA1_2_3:Arena {name: "Storage Room", description: "Storage Room of Blacksmith Barin", location: point({x: 900, y: 0, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA1_2_4:Arena {name: "Workshop", description: "Workshop of Blacksmith Barin", location: point({x: 900, y: 300, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_1)
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_2)
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_3)
MERGE (hA1_2)-[:HAS_ARENA]->(rA1_2_4)

// Add more arenas for other sectors as needed
MERGE (rA2_1_1:Arena {name: "Living Room", description: "Living Room of Farmer Finn's House", location: point({x: 1200, y: 0, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rA2_1_2:Arena {name: "Barn", description: "Barn of Farmer Finn's House", location: point({x: 1500, y: 0, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (rA2_1_3:Arena {name: "Kitchen", description: "Kitchen of Farmer Finn's House", location: point({x: 1200, y: 200, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA2_1_4:Arena {name: "Bedroom", description: "Bedroom of Farmer Finn's House", location: point({x: 1400, y: 200, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_1)
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_2)
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_3)
MERGE (hA2_1)-[:HAS_ARENA]->(rA2_1_4)

MERGE (rA2_2_1:Arena {name: "Herbal Room", description: "Herbal Room of Healer Hera", location: point({x: 1800, y: 0, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA2_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Healer Hera", location: point({x: 1800, y: 200, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA2_2_3:Arena {name: "Kitchen", description: "Kitchen of Healer Hera", location: point({x: 2000, y: 0, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA2_2_4:Arena {name: "Storage Room", description: "Storage Room of Healer Hera", location: point({x: 2000, y: 200, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rA2_2_5:Arena {name: "Garden", description: "Garden of Healer Hera", location: point({x: 1800, y: 400, z: 0}), dimensions: point({x: 300, y: 200, z: 150})})
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_1)
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_2)
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_3)
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_4)
MERGE (hA2_2)-[:HAS_ARENA]->(rA2_2_5)

MERGE (rB1_1_1:Arena {name: "Trading Room", description: "Trading Room of Merchant Morgan", location: point({x: 0, y: 700, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rB1_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Merchant Morgan", location: point({x: 300, y: 700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rB1_1_3:Arena {name: "Kitchen", description: "Kitchen of Merchant Morgan", location: point({x: 0, y: 900, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rB1_1_4:Arena {name: "Office", description: "Office of Merchant Morgan", location: point({x: 200, y: 900, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rB1_1_5:Arena {name: "Storage Room", description: "Storage Room of Merchant Morgan", location: point({x: 300, y: 1100, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_1)
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_2)
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_3)
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_4)
MERGE (hB1_1)-[:HAS_ARENA]->(rB1_1_5)

MERGE (rB1_2_1:Arena {name: "Office", description: "Office of Guard Captain Garen", location: point({x: 600, y: 700, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rB1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Guard Captain Garen", location: point({x: 900, y: 700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rB1_2_3:Arena {name: "Armory", description: "Armory of Guard Captain Garen", location: point({x: 600, y: 900, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rB1_2_4:Arena {name: "Training Room", description: "Training Room of Guard Captain Garen", location: point({x: 900, y: 900, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rB1_2_5:Arena {name: "Kitchen", description: "Kitchen of Guard Captain Garen", location: point({x: 600, y: 1100, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_1)
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_2)
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_3)
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_4)
MERGE (hB1_2)-[:HAS_ARENA]->(rB1_2_5)

MERGE (rC1_1_1:Arena {name: "Workshop", description: "Workshop of Carpenter Colin", location: point({x: 1200, y: 700, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (rC1_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Carpenter Colin", location: point({x: 1600, y: 700, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rC1_1_3:Arena {name: "Storage Room", description: "Storage Room of Carpenter Colin", location: point({x: 1200, y: 1000, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC1_1_4:Arena {name: "Kitchen", description: "Kitchen of Carpenter Colin", location: point({x: 1400, y: 1000, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC1_1_5:Arena {name: "Showroom", description: "Showroom of Carpenter Colin", location: point({x: 1600, y: 1000, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_1)
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_2)
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_3)
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_4)
MERGE (hC1_1)-[:HAS_ARENA]->(rC1_1_5)

MERGE (rC1_2_1:Arena {name: "Tailoring Room", description: "Tailoring Room of Tailor Talia", location: point({x: 1800, y: 700, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rC1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Tailor Talia", location: point({x: 2100, y: 700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC1_2_3:Arena {name: "Storage Room", description: "Storage Room of Tailor Talia", location: point({x: 1800, y: 900, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC1_2_4:Arena {name: "Kitchen", description: "Kitchen of Tailor Talia", location: point({x: 2000, y: 900, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC1_2_5:Arena {name: "Showroom", description: "Showroom of Tailor Talia", location: point({x: 2100, y: 1100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_1)
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_2)
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_3)
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_4)
MERGE (hC1_2)-[:HAS_ARENA]->(rC1_2_5)

MERGE (rC2_1_1:Arena {name: "Bakery", description: "Bakery of Baker Bella", location: point({x: 0, y: 1400, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rC2_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Baker Bella", location: point({x: 300, y: 1400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_1_3:Arena {name: "Storage Room", description: "Storage Room of Baker Bella", location: point({x: 0, y: 1600, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_1_4:Arena {name: "Kitchen", description: "Kitchen of Baker Bella", location: point({x: 200, y: 1600, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_1_5:Arena {name: "Dining Room", description: "Dining Room of Baker Bella", location: point({x: 300, y: 1800, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_1)
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_2)
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_3)
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_4)
MERGE (hC2_1)-[:HAS_ARENA]->(rC2_1_5)

MERGE (rC2_2_1:Arena {name: "Fishing Gear Room", description: "Fishing Gear Room of Fisherman Finn", location: point({x: 600, y: 1400, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rC2_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Fisherman Finn", location: point({x: 900, y: 1400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_2_3:Arena {name: "Storage Room", description: "Storage Room of Fisherman Finn", location: point({x: 600, y: 1600, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_2_4:Arena {name: "Kitchen", description: "Kitchen of Fisherman Finn", location: point({x: 800, y: 1600, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rC2_2_5:Arena {name: "Dining Room", description: "Dining Room of Fisherman Finn", location: point({x: 900, y: 1800, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_1)
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_2)
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_3)
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_4)
MERGE (hC2_2)-[:HAS_ARENA]->(rC2_2_5)

MERGE (rD1_1_1:Arena {name: "Shop Floor", description: "Shop Floor of Shopkeeper Sara", location: point({x: 1200, y: 1400, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (rD1_1_2:Arena {name: "Storage Room", description: "Storage Room of Shopkeeper Sara", location: point({x: 1600, y: 1400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD1_1_3:Arena {name: "Living Quarters", description: "Living Quarters of Shopkeeper Sara", location: point({x: 1200, y: 1700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD1_1_4:Arena {name: "Kitchen", description: "Kitchen of Shopkeeper Sara", location: point({x: 1400, y: 1700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD1_1_5:Arena {name: "Office", description: "Office of Shopkeeper Sara", location: point({x: 1600, y: 1900, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_1)
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_2)
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_3)
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_4)
MERGE (hD1_1)-[:HAS_ARENA]->(rD1_1_5)

MERGE (rD1_2_1:Arena {name: "Common Room", description: "Common Room of Innkeeper Ian", location: point({x: 1800, y: 1400, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (rD1_2_2:Arena {name: "Guest Rooms", description: "Guest Rooms of Innkeeper Ian", location: point({x: 2200, y: 1400, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rD1_2_3:Arena {name: "Dining Room", description: "Dining Room of Innkeeper Ian", location: point({x: 1800, y: 1700, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rD1_2_4:Arena {name: "Kitchen", description: "Kitchen of Innkeeper Ian", location: point({x: 2100, y: 1700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD1_2_5:Arena {name: "Storage Room", description: "Storage Room of Innkeeper Ian", location: point({x: 2400, y: 1700, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_1)
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_2)
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_3)
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_4)
MERGE (hD1_2)-[:HAS_ARENA]->(rD1_2_5)

MERGE (rD2_1_1:Arena {name: "Workshop Floor", description: "Workshop Floor of Craftsman Caleb", location: point({x: 0, y: 2100, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (rD2_1_2:Arena {name: "Living Quarters", description: "Living Quarters of Craftsman Caleb", location: point({x: 400, y: 2100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rD2_1_3:Arena {name: "Storage Room", description: "Storage Room of Craftsman Caleb", location: point({x: 0, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD2_1_4:Arena {name: "Kitchen", description: "Kitchen of Craftsman Caleb", location: point({x: 200, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD2_1_5:Arena {name: "Showroom", description: "Showroom of Craftsman Caleb", location: point({x: 400, y: 2600, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_1)
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_2)
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_3)
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_4)
MERGE (hD2_1)-[:HAS_ARENA]->(rD2_1_5)

MERGE (rD2_2_1:Arena {name: "Alchemy Lab", description: "Alchemy Lab of Alchemist Alana", location: point({x: 600, y: 2100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rD2_2_2:Arena {name: "Storage Room", description: "Storage Room of Alchemist Alana", location: point({x: 900, y: 2100, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD2_2_3:Arena {name: "Living Quarters", description: "Living Quarters of Alchemist Alana", location: point({x: 600, y: 2400, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rD2_2_4:Arena {name: "Kitchen", description: "Kitchen of Alchemist Alana", location: point({x: 900, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rD2_2_5:Arena {name: "Garden", description: "Garden of Alchemist Alana", location: point({x: 1200, y: 2400, z: 0}), dimensions: point({x: 400, y: 300, z: 250})})
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_1)
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_2)
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_3)
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_4)
MERGE (hD2_2)-[:HAS_ARENA]->(rD2_2_5)

MERGE (rE1_1_1:Arena {name: "Living Room", description: "Living Room of Sailor Sam's House", location: point({x: 1200, y: 2100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rE1_1_2:Arena {name: "Bedroom", description: "Bedroom of Sailor Sam's House", location: point({x: 1500, y: 2100, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rE1_1_3:Arena {name: "Kitchen", description: "Kitchen of Sailor Sam's House", location: point({x: 1200, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rE1_1_4:Arena {name: "Storage Room", description: "Storage Room of Sailor Sam's House", location: point({x: 1400, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rE1_1_5:Arena {name: "Dining Room", description: "Dining Room of Sailor Sam's House", location: point({x: 1500, y: 2600, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_1)
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_2)
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_3)
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_4)
MERGE (hE1_1)-[:HAS_ARENA]->(rE1_1_5)

MERGE (rE1_2_1:Arena {name: "Office", description: "Office of Harbormaster Hank", location: point({x: 1800, y: 2100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rE1_2_2:Arena {name: "Living Quarters", description: "Living Quarters of Harbormaster Hank", location: point({x: 2100, y: 2100, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (rE1_2_3:Arena {name: "Kitchen", description: "Kitchen of Harbormaster Hank", location: point({x: 1800, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rE1_2_4:Arena {name: "Storage Room", description: "Storage Room of Harbormaster Hank", location: point({x: 2000, y: 2400, z: 0}), dimensions: point({x: 200, y: 150, z: 150})})
MERGE (rE1_2_5:Arena {name: "Dining Room", description: "Dining Room of Harbormaster Hank", location: point({x: 2100, y: 2600, z: 0}), dimensions: point({x: 300, y: 200, z: 200})})
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_1)
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_2)
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_3)
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_4)
MERGE (hE1_2)-[:HAS_ARENA]->(rE1_2_5)


// Create Roads to Connect All Buildings
// Create Roads to Connect Sectors
// MERGE (road1:Road {name: "Main Street", description: "The main road through Rivenwood", length_km: 1.2, location: point({x: 0, y: 0, z: 0})})
// MERGE (road2:Road {name: "Market Street", description: "The road leading to the market area", length_km: 0.7, location: point({x: 0, y: 700, z: 0})})
// MERGE (road3:Road {name: "Harbor Road", description: "The road leading to the harbor", length_km: 1.5, location: point({x: 0, y: 1400, z: 0})})
// MERGE (road4:Road {name: "Castle Road", description: "The road leading to the castle", length_km: 0.9, location: point({x: 300, y: 300, z: 0})})
// MERGE (road5:Road {name: "Farm Road", description: "The road leading to the farms", length_km: 1.1, location: point({x: -300, y: -300, z: 0})})

// // Connect Roads to Sectors
// MERGE (road1)-[:CONNECTS_TO]->(hA1_1)
// MERGE (road1)-[:CONNECTS_TO]->(hA1_2)
// MERGE (road1)-[:CONNECTS_TO]->(hA2_1)
// MERGE (road1)-[:CONNECTS_TO]->(hA2_2)
// MERGE (road2)-[:CONNECTS_TO]->(hB1_1)
// MERGE (road2)-[:CONNECTS_TO]->(hB1_2)
// MERGE (road2)-[:CONNECTS_TO]->(hC1_1)
// MERGE (road2)-[:CONNECTS_TO]->(hC1_2)
// MERGE (road3)-[:CONNECTS_TO]->(hC2_1)
// MERGE (road3)-[:CONNECTS_TO]->(hC2_2)
// MERGE (road3)-[:CONNECTS_TO]->(hD1_1)
// MERGE (road3)-[:CONNECTS_TO]->(hD1_2)
// MERGE (road3)-[:CONNECTS_TO]->(hD2_1)
// MERGE (road3)-[:CONNECTS_TO]->(hD2_2)
// MERGE (road4)-[:CONNECTS_TO]->(hE1_1)
// MERGE (road4)-[:CONNECTS_TO]->(hE1_2)
// MERGE (road5)-[:CONNECTS_TO]->(hE2_1)
// MERGE (road5)-[:CONNECTS_TO]->(hE2_2)

// // Connect Sectors to Each Other
// MERGE (hA1_1)-[:CONNECTS_TO]->(hA1_2)
// MERGE (hA2_1)-[:CONNECTS_TO]->(hA2_2)
// MERGE (hB1_1)-[:CONNECTS_TO]->(hB1_2)
// MERGE (hC1_1)-[:CONNECTS_TO]->(hC1_2)
// MERGE (hC2_1)-[:CONNECTS_TO]->(hC2_2)
// MERGE (hD1_1)-[:CONNECTS_TO]->(hD1_2)
// MERGE (hD2_1)-[:CONNECTS_TO]->(hD2_2)
// MERGE (hE1_1)-[:CONNECTS_TO]->(hE1_2)
// MERGE (hE2_1)-[:CONNECTS_TO]->(hE2_2)
// MERGE (hA1_1)-[:CONNECTS_TO]->(hB1_1)
// MERGE (hB1_1)-[:CONNECTS_TO]->(hC1_1)
// MERGE (hC1_1)-[:CONNECTS_TO]->(hD1_1)
// MERGE (hD1_1)-[:CONNECTS_TO]->(hE1_1)

// Create Pathways to Connect Arenas within Buildings
MERGE (pathA1_1:Pathway {name: "Pathway A1-1", description: "Pathway connecting rooms in Elder Elara's House", length_km: 0.05, location: point({x: 0, y: 0, z: 0})})
MERGE (pathA1_2:Pathway {name: "Pathway A1-2", description: "Pathway connecting rooms in Blacksmith Barin's House", length_km: 0.03, location: point({x: 600, y: 0, z: 0})})
MERGE (pathA2_1:Pathway {name: "Pathway A2-1", description: "Pathway connecting rooms in Farmer Finn's House", length_km: 0.04, location: point({x: 1200, y: 0, z: 0})})
MERGE (pathA2_2:Pathway {name: "Pathway A2-2", description: "Pathway connecting rooms in Healer Hera's House", length_km: 0.05, location: point({x: 1800, y: 0, z: 0})})
MERGE (pathB1_1:Pathway {name: "Pathway B1-1", description: "Pathway connecting rooms in Merchant Morgan's House", length_km: 0.03, location: point({x: 0, y: 700, z: 0})})
MERGE (pathB1_2:Pathway {name: "Pathway B1-2", description: "Pathway connecting rooms in Guard Captain Garen's House", length_km: 0.04, location: point({x: 600, y: 700, z: 0})})
MERGE (pathC1_1:Pathway {name: "Pathway C1-1", description: "Pathway connecting rooms in Carpenter Colin's House", length_km: 0.03, location: point({x: 1200, y: 700, z: 0})})
MERGE (pathC1_2:Pathway {name: "Pathway C1-2", description: "Pathway connecting rooms in Tailor Talia's House", length_km: 0.02, location: point({x: 1800, y: 700, z: 0})})
MERGE (pathC2_1:Pathway {name: "Pathway C2-1", description: "Pathway connecting rooms in Baker Bella's House", length_km: 0.03, location: point({x: 0, y: 1400, z: 0})})
MERGE (pathC2_2:Pathway {name: "Pathway C2-2", description: "Pathway connecting rooms in Fisherman Finn's House", length_km: 0.04, location: point({x: 600, y: 1400, z: 0})})
MERGE (pathD1_1:Pathway {name: "Pathway D1-1", description: "Pathway connecting rooms in Shopkeeper Sara's Shop", length_km: 0.03, location: point({x: 1200, y: 1400, z: 0})})
MERGE (pathD1_2:Pathway {name: "Pathway D1-2", description: "Pathway connecting rooms in Innkeeper Ian's Inn", length_km: 0.02, location: point({x: 1800, y: 1400, z: 0})})
MERGE (pathD2_1:Pathway {name: "Pathway D2-1", description: "Pathway connecting rooms in Craftsman Caleb's Workshop", length_km: 0.04, location: point({x: 0, y: 2100, z: 0})})
MERGE (pathD2_2:Pathway {name: "Pathway D2-2", description: "Pathway connecting rooms in Alchemist Alana's Alchemy Shop", length_km: 0.05, location: point({x: 600, y: 2100, z: 0})})
MERGE (pathE1_1:Pathway {name: "Pathway E1-1", description: "Pathway connecting rooms in Sailor Sam's House", length_km: 0.03, location: point({x: 1200, y: 2100, z: 0})})
MERGE (pathE1_2:Pathway {name: "Pathway E1-2", description: "Pathway connecting rooms in Harbormaster Hank's House", length_km: 0.04, location: point({x: 1800, y: 2100, z: 0})})

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
// MERGE (road1:Road {name: "Main Street", description: "The main road through Rivenwood", length_km: 1.2, location: point({x: 0, y: 0, z: 0})})
// MERGE (road2:Road {name: "Market Street", description: "The road leading to the market area", length_km: 0.7, location: point({x: 0, y: 700, z: 0})})
// MERGE (road3:Road {name: "Harbor Road", description: "The road leading to the harbor", length_km: 1.5, location: point({x: 0, y: 1400, z: 0})})
// MERGE (road4:Road {name: "Admin Road", description: "Road connecting administrative buildings", length_km: 1.0, location: point({x: 300, y: 300, z: 0})})
// MERGE (road5:Road {name: "Guard Road", description: "Road leading to the guard barracks and watchtowers", length_km: 0.8, location: point({x: -300, y: -300, z: 0})})
// MERGE (road6:Road {name: "Market Road", description: "Road leading to the marketplace and related sectors", length_km: 1.1, location: point({x: 100, y: 800, z: 0})})
// MERGE (road7:Road {name: "Harbor Road", description: "Road connecting to the harbor and related sectors", length_km: 1.4, location: point({x: 200, y: 1500, z: 0})})

// // Connect Roads to Essential Buildings
// MERGE (road4)-[:CONNECTS_TO]->(th)
// MERGE (road4)-[:CONNECTS_TO]->(gb)
// MERGE (road5)-[:CONNECTS_TO]->(wt1)
// MERGE (road5)-[:CONNECTS_TO]->(wt2)
// MERGE (road6)-[:CONNECTS_TO]->(mp)
// MERGE (road6)-[:CONNECTS_TO]->(wh)
// MERGE (road6)-[:CONNECTS_TO]->(bf)
// MERGE (road6)-[:CONNECTS_TO]->(tv)
// MERGE (road6)-[:CONNECTS_TO]->(ch)
// MERGE (road6)-[:CONNECTS_TO]->(sh)
// MERGE (road6)-[:CONNECTS_TO]->(ap)
// MERGE (road6)-[:CONNECTS_TO]->(bs)
// MERGE (road7)-[:CONNECTS_TO]->(ml)
// MERGE (road7)-[:CONNECTS_TO]->(sy)
// MERGE (road7)-[:CONNECTS_TO]->(fm)
// MERGE (road7)-[:CONNECTS_TO]->(hm)

// Create Pathways to Connect Arenas within Buildings
MERGE (pathTH:Pathway {name: "Pathway TH", description: "Pathway connecting rooms in Town Hall", length_km: 0.02, location: point({x: 0, y: 0, z: 0})})
MERGE (pathGB:Pathway {name: "Pathway GB", description: "Pathway connecting rooms in Guard Barracks", length_km: 0.03, location: point({x: 0, y: 100, z: 0})})
MERGE (pathWT1:Pathway {name: "Pathway WT1", description: "Pathway connecting rooms in North Watchtower", length_km: 0.01, location: point({x: 0, y: 200, z: 0})})
MERGE (pathWT2:Pathway {name: "Pathway WT2", description: "Pathway connecting rooms in South Watchtower", length_km: 0.01, location: point({x: 0, y: 300, z: 0})})
MERGE (pathMP:Pathway {name: "Pathway MP", description: "Pathway connecting areas in Marketplace", length_km: 0.04, location: point({x: 0, y: 400, z: 0})})
MERGE (pathWH:Pathway {name: "Pathway WH", description: "Pathway connecting areas in Warehouse", length_km: 0.03, location: point({x: 0, y: 500, z: 0})})
MERGE (pathBF:Pathway {name: "Pathway BF", description: "Pathway connecting areas in Blacksmith Forge", length_km: 0.02, location: point({x: 0, y: 600, z: 0})})
MERGE (pathTV:Pathway {name: "Pathway TV", description: "Pathway connecting rooms in Tavern", length_km: 0.03, location: point({x: 0, y: 700, z: 0})})
MERGE (pathCH:Pathway {name: "Pathway CH", description: "Pathway connecting areas in Church", length_km: 0.01, location: point({x: 0, y: 800, z: 0})})
MERGE (pathSH:Pathway {name: "Pathway SH", description: "Pathway connecting rooms in Schoolhouse", length_km: 0.02, location: point({x: 0, y: 900, z: 0})})
MERGE (pathAP:Pathway {name: "Pathway AP", description: "Pathway connecting rooms in Apothecary", length_km: 0.02, location: point({x: 0, y: 1000, z: 0})})
MERGE (pathBS:Pathway {name: "Pathway BS", description: "Pathway connecting areas in Butcher Shop", length_km: 0.02, location: point({x: 0, y: 1100, z: 0})})
MERGE (pathML:Pathway {name: "Pathway ML", description: "Pathway connecting areas in Mill", length_km: 0.02, location: point({x: 0, y: 1200, z: 0})})
MERGE (pathSY:Pathway {name: "Pathway SY", description: "Pathway connecting areas in Shipyard", length_km: 0.03, location: point({x: 0, y: 1300, z: 0})})
MERGE (pathFM:Pathway {name: "Pathway FM", description: "Pathway connecting areas in Fish Market", length_km: 0.02, location: point({x: 0, y: 1400, z: 0})})
MERGE (pathHM:Pathway {name: "Pathway HM", description: "Pathway connecting areas in Harbormaster’s Office", length_km: 0.01, location: point({x: 0, y: 1500, z: 0})})

// Connect Pathways to Arenas within Buildings
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


// Create Roads
// Create Roads to Connect Sectors
MERGE (road1:Road {name: "Main Street", description: "The main road through Rivenwood", length_km: 1.2})
MERGE (road2:Road {name: "Market Street", description: "The road leading to the market area", length_km: 0.7})
MERGE (road3:Road {name: "Harbor Road", description: "The road leading to the harbor", length_km: 1.5})
MERGE (road4:Road {name: "Admin Road", description: "Road connecting administrative buildings", length_km: 1.0})
MERGE (road5:Road {name: "Guard Road", description: "Road leading to the guard barracks and watchtowers", length_km: 0.8})
MERGE (road6:Road {name: "Market Road", description: "Road leading to the marketplace and related sectors", length_km: 1.1})
MERGE (road7:Road {name: "Harbor Road", description: "Road connecting to the harbor and related sectors", length_km: 1.4})

// Connect Roads to Sectors
MERGE (road1)-[:CONNECTS_TO]->(hA1_1)
MERGE (road1)-[:CONNECTS_TO]->(hA1_2)
MERGE (road2)-[:CONNECTS_TO]->(hA2_1)
MERGE (road2)-[:CONNECTS_TO]->(hA2_2)
MERGE (road3)-[:CONNECTS_TO]->(hB1_1)
MERGE (road3)-[:CONNECTS_TO]->(hB1_2)
MERGE (road4)-[:CONNECTS_TO]->(hC1_1)
MERGE (road4)-[:CONNECTS_TO]->(hC1_2)
MERGE (road5)-[:CONNECTS_TO]->(hC2_1)
MERGE (road5)-[:CONNECTS_TO]->(hC2_2)
MERGE (road6)-[:CONNECTS_TO]->(hD1_1)
MERGE (road6)-[:CONNECTS_TO]->(hD1_2)
MERGE (road7)-[:CONNECTS_TO]->(hD2_1)
MERGE (road7)-[:CONNECTS_TO]->(hD2_2)
MERGE (road1)-[:CONNECTS_TO]->(hE1_1)
MERGE (road1)-[:CONNECTS_TO]->(hE1_2)

// Connect Sectors to Each Other via Roads
MERGE (road1)-[:CONNECTS_TO]->(road2)
MERGE (road2)-[:CONNECTS_TO]->(road3)
MERGE (road3)-[:CONNECTS_TO]->(road4)
MERGE (road4)-[:CONNECTS_TO]->(road5)
MERGE (road5)-[:CONNECTS_TO]->(road6)
MERGE (road6)-[:CONNECTS_TO]->(road7)

// Ensure Connectivity for all Sectors
MERGE (hA1_1)-[:CONNECTS_TO]->(hA1_2)
MERGE (hA2_1)-[:CONNECTS_TO]->(hA2_2)
MERGE (hB1_1)-[:CONNECTS_TO]->(hB1_2)
MERGE (hC1_1)-[:CONNECTS_TO]->(hC1_2)
MERGE (hC2_1)-[:CONNECTS_TO]->(hC2_2)
MERGE (hD1_1)-[:CONNECTS_TO]->(hD1_2)
MERGE (hD2_1)-[:CONNECTS_TO]->(hD2_2)
MERGE (hE1_1)-[:CONNECTS_TO]->(hE1_2)
MERGE (hA1_1)-[:CONNECTS_TO]->(hB1_1)
MERGE (hB1_1)-[:CONNECTS_TO]->(hC1_1)
MERGE (hC1_1)-[:CONNECTS_TO]->(hD1_1)
MERGE (hD1_1)-[:CONNECTS_TO]->(hE1_1)

MERGE (th)-[:CONNECTS_TO]->(road4)
MERGE (gb)-[:CONNECTS_TO]->(road5)
MERGE (wt1)-[:CONNECTS_TO]->(road5)
MERGE (wt2)-[:CONNECTS_TO]->(road5)
MERGE (mp)-[:CONNECTS_TO]->(road6)
MERGE (wh)-[:CONNECTS_TO]->(road6)
MERGE (bf)-[:CONNECTS_TO]->(road6)
MERGE (tv)-[:CONNECTS_TO]->(road6)
MERGE (ch)-[:CONNECTS_TO]->(road6)
MERGE (sh)-[:CONNECTS_TO]->(road6)
MERGE (ap)-[:CONNECTS_TO]->(road6)
MERGE (bs)-[:CONNECTS_TO]->(road6)
MERGE (ml)-[:CONNECTS_TO]->(road7)
MERGE (sy)-[:CONNECTS_TO]->(road7)
MERGE (fm)-[:CONNECTS_TO]->(road7)
MERGE (hm)-[:CONNECTS_TO]->(road7)
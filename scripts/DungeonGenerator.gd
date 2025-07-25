extends Node
class_name DungeonGenerator

# Generates procedural dungeons with rooms and modifiers.
func generate_dungeon(tier: int) -> Dictionary:
    var dungeon := {
        "rooms": [],
        "modifiers": [],
        "tier": tier
    }
    # Number of rooms scales with tier
    var num_rooms: int = 3 + tier
    for i in range(num_rooms):
        dungeon["rooms"].append(_generate_room(i))
    dungeon["modifiers"] = _generate_modifiers(tier)
    return dungeon

# Create a single room. Replace with more complex generation later.
func _generate_room(index: int) -> Dictionary:
    return {
        "index": index,
        "description": "A dark room filled with glowing moss.",
        "enemies": []
    }

# Determine dungeon modifiers based on tier.
func _generate_modifiers(tier: int) -> Array:
    var mods: Array = []
    if tier >= 2:
        mods.append("Elite Enemies")
    if tier >= 3:
        mods.append("Increased Loot")
    return mods

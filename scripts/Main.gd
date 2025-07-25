extends Node2D

# Main scene script for Wardenlight
# Initializes the game and demonstrates basic functionality of player and dungeon generation.

# Load scripts using relative paths. In Godot, these will resolve correctly when packaged.
const Player = preload("res://scripts/Player.gd")
const WeaponCard = preload("res://scripts/cards/WeaponCard.gd")
const ArmorCard = preload("res://scripts/cards/ArmorCard.gd")
const SpellCard = preload("res://scripts/cards/SpellCard.gd")
const DungeonGenerator = preload("res://scripts/DungeonGenerator.gd")

func _ready() -> void:
    print("Initializing Wardenlight...\n")

    # Create player instance
    var player = Player.new()
    print("Player created. Level: %d, XP: %d" % [player.level, player.xp])

    # Create some example cards
    var sword = WeaponCard.new("Wooden Sword", "A simple sword to start your journey.", 1, "Common", 5)
    var shield = ArmorCard.new("Cloth Armor", "Basic cloth armor offering minimal protection.", 1, "Common", 2)
    var fireball = SpellCard.new("Spark", "A tiny spark of fire. Useful for lighting the way.", 1, "Common", 3)

    # Equip the cards to the player
    player.equip_card(sword)
    player.equip_card(shield)
    player.equip_card(fireball)

    # Demonstrate using the cards
    sword.use()
    shield.use()
    fireball.use()

    # Generate a basic dungeon using the DungeonGenerator
    var generator = DungeonGenerator.new()
    var dungeon = generator.generate_dungeon(1)  # Tier 1 dungeon for demo purposes
    print("Generated dungeon:", dungeon)

    # Simulate gaining XP and leveling up
    player.gain_xp(150)
    print("Player level after gaining XP:", player.level)

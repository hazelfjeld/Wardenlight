extends "res://scripts/cards/Card.gd"
class_name ArmorCard

# Armor card representing defensive equipment.
var defense: int

func _init(_name: String = "", _description: String = "", _level: int = 1, _rarity: String = "Common", _defense: int = 3) -> void:
    # Call base initializer with armor type
    ._init(_name, _description, _level, _rarity, Card.CardType.ARMOR)
    defense = _defense

func use(target) -> void:
    # Example effect: print defense boost message
    print("%s increases %s's defense by %d." % [name, target, defense])

extends "res://scripts/cards/Card.gd"
class_name SpellCard

# Spell card representing magical abilities.
var power: int

func _init(_name: String = "", _description: String = "", _level: int = 1, _rarity: String = "Common", _power: int = 4) -> void:
    # Call base initializer with spell type
    ._init(_name, _description, _level, _rarity, Card.CardType.SPELL)
    power = _power

func use(target) -> void:
    # Example effect: print casting message
    print("%s casts a spell on %s with power %d." % [name, target, power])

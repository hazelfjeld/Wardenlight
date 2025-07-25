extends "res://scripts/cards/Card.gd"  # ensure path for base class if using exported resource
class_name WeaponCard

# Weapon card representing offensive equipment.
var damage: int

func _init(_name: String = "", _description: String = "", _level: int = 1, _rarity: String = "Common", _damage: int = 5) -> void:
    # Call base class initializer. CardType.WEAPON defined in Card.gd
    ._init(_name, _description, _level, _rarity, Card.CardType.WEAPON)
    damage = _damage

func use(target) -> void:
    # Example effect: print damage inflicted
    print("%s attacks %s for %d damage!" % [name, target, damage])

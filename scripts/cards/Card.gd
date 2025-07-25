extends Resource
class_name Card

# Base class for all cards in Wardenlight
# Card types represented by enum for clarity
enum CardType { WEAPON, ARMOR, SPELL }

var name: String
var description: String
var level: int
var rarity: String
var card_type: CardType

func _init(_name: String = "", _description: String = "", _level: int = 1, _rarity: String = "Common", _type: int = CardType.WEAPON) -> void:
    name = _name
    description = _description
    level = _level
    rarity = _rarity
    card_type = _type

# Virtual use method to be overridden in subclasses
func use(target) -> void:
    # To be implemented by subclasses to define the card's effect
    print("Using card: %s" % name)

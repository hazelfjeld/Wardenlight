extends Node
class_name Player

# Player character managing level, experience and equipped cards.
var level: int = 1
var xp: int = 0
var skill_points: int = 0
var xp_to_next_level: int = 100
var bound_cards: Array = []  # Holds up to three Card instances

# Equip a card into the player's loadout. Maximum of three cards.
func equip_card(card: Card) -> void:
    if bound_cards.size() < 3:
        bound_cards.append(card)
        print("Equipped card: %s" % card.name)
    else:
        print("Cannot equip more than three cards.")

# Gain experience and handle level ups.
func gain_xp(amount: int) -> void:
    xp += amount
    while xp >= xp_to_next_level:
        xp -= xp_to_next_level
        level += 1
        skill_points += 1
        # Increase the XP required for next level (simple scaling)
        xp_to_next_level = int(xp_to_next_level * 1.5)
        print("Level up! Level: %d, Skill points: %d" % [level, skill_points])

# Upgrade a card with essence (placeholder implementation)
func upgrade_card(card: Card, essence: int) -> void:
    print("Upgrading %s with %d essence" % [card.name, essence])

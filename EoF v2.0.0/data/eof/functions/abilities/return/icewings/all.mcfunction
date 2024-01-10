#> eof:abilities/return/icewings/all
#
# Grant the player all IceWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/icewings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/icewings/all.mcfunction", "color": "aqua"}}}]

    # Grant IceWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/icewings/frost_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/icewings/serrated_strike
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/icewings/icicle_incision

#endregion

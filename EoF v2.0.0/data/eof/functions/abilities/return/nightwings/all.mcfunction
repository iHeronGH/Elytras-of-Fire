#> eof:abilities/return/nightwings/all
#
# Grant the player all NightWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:nightwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/nightwings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:nightwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/nightwings/all.mcfunction", "color": "aqua"}}}]

    # Grant NightWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/nightwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/nightwings/shade_shackle
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/nightwings/premonition

#endregion

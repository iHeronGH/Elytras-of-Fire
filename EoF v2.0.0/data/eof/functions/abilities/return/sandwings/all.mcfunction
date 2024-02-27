#> eof:abilities/return/sandwings/all
#
# Grant the player all SandWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/sandwings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/sandwings/all.mcfunction", "color": "aqua"}}}]

    # Grant SandWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/sandwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/sandwings/desert_storm
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/sandwings/toxin_slash

#endregion

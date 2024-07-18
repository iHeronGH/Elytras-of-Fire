#> eof:abilities/cooldowns/mudwings/all
#
# Execute cooldown functions for all MudWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/cooldowns/mudwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/cooldowns/mudwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/cooldowns/mudwings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/mudwings, predicate=eof:abilities/cooldowns/mudwings/flame_breath] run function eof:abilities/cooldowns/mudwings/flame_breath
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/mudwings, predicate=eof:abilities/cooldowns/mudwings/terrashock] run function eof:abilities/cooldowns/mudwings/terrashock
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/mudwings, predicate=eof:abilities/cooldowns/mudwings/mud_swipe] run function eof:abilities/cooldowns/mudwings/mud_swipe

#endregion

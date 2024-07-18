#> eof:passives/rainwings/camouflage/1
#
# Grant effects based on the RainWing passive ability Camouflage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:camouflage/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/passives/rainwings/camouflage/1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:camouflage/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/passives/rainwings/camouflage/1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:camouflage/1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/passives/rainwings/camouflage/1.mcfunction", "color": "aqua"}}}]

    # Camouflage 1 effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] speed 1 2 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] invisibility 1 0 true

#endregion

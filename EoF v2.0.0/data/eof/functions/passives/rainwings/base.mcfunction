#> eof:passives/rainwings/base
#
# Grants base RainWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/passives/rainwings/base.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/passives/rainwings/base.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/passives/rainwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] speed 1 1 true

    # Check for Camouflage effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] run function eof:passives/rainwings/camouflage/1

    # Loop if there are RainWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] run schedule function eof:passives/rainwings/base 1t
    
#endregion

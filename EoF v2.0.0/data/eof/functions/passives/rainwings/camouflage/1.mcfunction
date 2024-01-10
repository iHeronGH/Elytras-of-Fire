#> eof:passives/rainwings/camouflage/1
#
# Grant effects based on the RainWing passive ability Camouflage.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/rainwings/camouflage/1.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/rainwings/camouflage/1.mcfunction", "color": "aqua"}}}]

    # Camouflage 1 effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] speed 1 2 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] invisibility 1 0 true

#endregion

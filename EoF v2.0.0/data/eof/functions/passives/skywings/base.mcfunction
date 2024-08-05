#> eof:passives/skywings/base
#
# Grants base SkyWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:passives/skywings/base.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:passives/skywings/base.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:passives/skywings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/skywings] speed 1 2 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/skywings] strength 1 0 true

    # Check for Skyborn Jump Effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.skyborn.init, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/jump/1] run function eof:passives/skywings/skyborn/jump/init
    # Check for Skyborn Regen Effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] run function eof:passives/skywings/skyborn/regen/1/activate

    # Loop if there are SkyWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/skywings] run schedule function eof:passives/skywings/base 1t

#endregion

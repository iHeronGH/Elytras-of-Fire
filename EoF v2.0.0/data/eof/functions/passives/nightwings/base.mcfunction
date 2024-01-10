#> eof:passives/nightwings/base
#
# Grants base NightWing effects.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/nightwings/base.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/nightwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] strength 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] night_vision 12 0 true

    # Check for Gloom Cloak effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/1] run function eof:passives/nightwings/gloom_cloak/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/2] run function eof:passives/nightwings/gloom_cloak/2

#endregion

#> eof:passives/icewings/base
#
# Grants base IceWing effects.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/icewings/base.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/icewings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/icewings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/icewings] strength 1 1 true

    # Check for Cryoenergy effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/1] run function eof:passives/icewings/cryoenergy/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/2] run function eof:passives/icewings/cryoenergy/2

#endregion

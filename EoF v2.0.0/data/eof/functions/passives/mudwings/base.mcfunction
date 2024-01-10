#> eof:passives/mudwings/base
#
# Grants base MudWing effects.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/base.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] strength 1 1 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 1 0 true
effect give @a[tag=eoflib.atts, tag=eof.passives.rejuvenation.active, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 3 1 true

    # Check for Rejuvenation effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, predicate=eof:tribes/mudwings, predicate=eof:passives/rejuvenation/1] run function eof:passives/mudwings/rejuvenation/init

    # Check for Sibling Bond effects
execute as @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] at @s store result score @s eof.passives.sibling_bond if entity @a[predicate=eof:tribes/mudwings, distance=0.1..10]
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] run function eof:passives/mudwings/sibling_bond/1

#endregion

#> eof:passives/mudwings/base
#
# Grants base MudWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] strength 1 1 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 1 0 true
effect give @a[tag=eoflib.atts, tag=eof.passives.rejuvenation.active, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 3 1 true

    # Check for Rejuvenation effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, predicate=eof:tribes/mudwings, predicate=eof:passives/rejuvenation/1] run function eof:passives/mudwings/rejuvenation/init

    # Check for Sibling Bond effects
execute as @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] at @s store result score @s eof.passives.sibling_bond if entity @a[predicate=eof:tribes/mudwings, distance=0.1..10]
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] run function eof:passives/mudwings/sibling_bond/1

    # Loop if there are any MudWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] run schedule function eof:passives/mudwings/base 1t replace

#endregion

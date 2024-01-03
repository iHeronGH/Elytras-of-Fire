#> eof:passives/rainwings/base
#
# Grants base RainWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] speed 1 1 true

    # Check for Camouflage effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1] run function eof:passives/rainwings/camouflage/1

    # Loop if there are any RainWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] run schedule function eof:passives/rainwings/base 1t replace
    
#endregion

#> eof:passives/icewings/base
#
# Grants base IceWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/icewings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/icewings] strength 1 1 true

    # Check for Cryoenergy effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/1] run function eof:passives/icewings/cryoenergy/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/2] run function eof:passives/icewings/cryoenergy/2

    # Loop if there are any IceWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings] run schedule function eof:passives/icewings/base 1t replace

#endregion

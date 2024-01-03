#> eof:passives/skywings/base
#
# Grants base SkyWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/skywings] speed 1 2 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/skywings] strength 1 0 true

    # Check for Skyborn Jump Effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.skyborn.init, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/jump/1] run function eof:passives/skywings/skyborn/jump/init
    # Check for Skyborn Regen Effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] run function eof:passives/skywings/skyborn/regen/1/activate

    # Loop if there are any SkyWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/skywings] run schedule function eof:passives/skywings/base 1t replace

#endregion

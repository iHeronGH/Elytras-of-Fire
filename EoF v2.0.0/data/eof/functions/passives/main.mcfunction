#> eof:passives/main
#
# Applies effects to players with their effects toggled on.

#region
    # Clear other advancements
function #eoflib:reset/tribe_advancements

    # Clear other cooldowns
function #eoflib:reset/cooldowns

    # Determine effects based on tribe
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings] run function eof:passives/icewings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] run function eof:passives/mudwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] run function eof:passives/nightwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] run function eof:passives/rainwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] run function eof:passives/sandwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run function eof:passives/seawings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/skywings] run function eof:passives/skywings/base

    # Loop if there are other Pyrrhian tribes
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/pyrrhian] run schedule function eof:passives/main 1t replace

#endregion

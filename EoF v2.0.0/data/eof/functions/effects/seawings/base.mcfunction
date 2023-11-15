#> eof:effects/seawings/base
#
# Grants base SeaWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings] night_vision 12 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 2 1 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:location/water] conduit_power 1 0 true

    # Check for Torrent effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eof:passives/torrent/1] run function eof:effects/seawings/torrent/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eof:passives/torrent/2] run function eof:effects/seawings/torrent/2

    # Check for True Blessing effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active, predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/1] run function eof:effects/seawings/true_blessing/init

    # Loop if there are any SeaWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run schedule function eof:effects/seawings/base 1t replace

#endregion

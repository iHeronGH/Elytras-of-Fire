#> eof:effects/seawings/base
#
# Grants base SeaWing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/seawings, tag=eoflib.atts] night_vision 12 0 true
effect give @a[predicate=eof:tribes/seawings, predicate=eoflib:movement/swim, tag=eoflib.atts] speed 2 1 true
effect give @a[predicate=eof:tribes/seawings, predicate=eoflib:location/water, tag=eoflib.atts] conduit_power 1 0 true

	# Check for Torrent Effects
execute if entity @a[predicate=eof:tribes/seawings, predicate=eof:passives/torrent/1, tag=eoflib.atts] run function eof:effects/seawings/torrent/1
execute if entity @a[predicate=eof:tribes/seawings, predicate=eof:passives/torrent/2, tag=eoflib.atts] run function eof:effects/seawings/torrent/2

	# Check for True Blessing Effects
execute if entity @a[predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/1, tag=eoflib.atts, tag=!eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active] run function eof:effects/seawings/true_blessing/init

	# Loop if there are any SeaWings
execute if entity @a[predicate=eof:tribes/seawings, tag=eoflib.atts] run schedule function eof:effects/seawings/base 1t replace

#endregion

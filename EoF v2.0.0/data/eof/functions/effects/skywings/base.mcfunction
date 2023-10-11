#> eof:effects/skywings/base
#
# Grants base SkyWing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/skywings, tag=eoflib.atts] speed 1 2 true
effect give @a[predicate=eof:tribes/skywings, tag=eoflib.atts] strength 1 0 true

	# Check for Skyborn Jump Effects
execute as @a[tag=eoflib.atts, tag=!eof.passives.skyborn.init, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/jump/1] run function eof:effects/skywings/skyborn/jump/init
	# Check for Skyborn Regen Effects
execute as @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] run function eof:effects/skywings/skyborn/regen/1/activate

	# Loop if there are any SkyWings
execute if entity @a[predicate=eof:tribes/skywings, tag=eoflib.atts] run schedule function eof:effects/skywings/base 1t replace

#endregion

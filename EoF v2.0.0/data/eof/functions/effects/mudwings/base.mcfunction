#> eof:effects/mudwings/base
#
# Grants base Mudwing effects.

#region
	# Base effects
effect give @a[predicate=eof:tribes/mudwings, tag=eoflib.atts] strength 1 1 true
effect give @a[predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water, tag=eoflib.atts] speed 1 0 true
effect give @a[predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water, tag=eof.passives.rejuvenation.active, tag=eoflib.atts] speed 3 1 true

	# Check for Rejuvenation effects
execute if entity @a[predicate=eof:tribes/mudwings, predicate=eof:passives/rejuvenation/1, tag=eoflib.atts, tag=!eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active] run function eof:effects/mudwings/rejuvenation/init

	# Loop if there are any MudWings
execute if entity @a[predicate=eof:tribes/mudwings, tag=eoflib.atts] run schedule function eof:effects/mudwings/base 1t replace

#endregion

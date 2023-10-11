#> eof:effects/mudwings/base
#
# Grants base Mudwing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/mudwings, tag=eoflib.atts] strength 1 1 true

	# Check for Rejuvenation Effects
execute if entity @a[predicate=eof:passives/rejuvenation/1, tag=eoflib.atts, tag=!eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active] run function eof:effects/mudwings/rejuvenation/init

	# Loop if there are any MudWings
execute if entity @a[predicate=eof:tribes/mudwings, tag=eoflib.atts] run schedule function eof:effects/mudwings/base 1t replace

#endregion

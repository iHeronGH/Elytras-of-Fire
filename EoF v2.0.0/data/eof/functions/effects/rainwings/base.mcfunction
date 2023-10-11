#> eof:effects/rainwings/base
#
# Grants base RainWing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/rainwings, tag=eoflib.atts] speed 1 1 true

	# Check for Camouflage Effects
execute if entity @a[predicate=eof:tribes/rainwings, predicate=eof:passives/camouflage/1, tag=eoflib.atts] run function eof:effects/rainwings/camouflage/1

	# Loop if there are any RainWings
execute if entity @a[predicate=eof:tribes/rainwings, tag=eoflib.atts] run schedule function eof:effects/rainwings/base 1t replace

#endregion

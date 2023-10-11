#> eof:effects/icewings/base
#
# Grants base IceWing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/icewings, tag=eoflib.atts] speed 1 0 true
effect give @a[predicate=eof:tribes/icewings, tag=eoflib.atts] strength 1 1 true

	# Check for Cryoenergy Effects
execute if entity @a[predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/1, tag=eoflib.atts] run function eof:effects/icewings/cryoenergy/1
execute if entity @a[predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/2, tag=eoflib.atts] run function eof:effects/icewings/cryoenergy/2

	# Loop if there are any IceWings
execute if entity @a[predicate=eof:tribes/icewings, tag=eoflib.atts] run schedule function eof:effects/icewings/base 1t replace

#endregion

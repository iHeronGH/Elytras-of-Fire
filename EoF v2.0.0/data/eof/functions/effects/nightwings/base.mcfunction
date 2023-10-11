#> eof:effects/nightwings/base
#
# Grants base Nightwing effects.

#region
	# Base Effects
effect give @a[predicate=eof:tribes/nightwings, tag=eoflib.atts] speed 1 0 true
effect give @a[predicate=eof:tribes/nightwings, tag=eoflib.atts] strength 1 0 true
effect give @a[predicate=eof:tribes/nightwings, tag=eoflib.atts] night_vision 12 0 true

	# Check for Gloom Cloak Effects
execute if entity @a[predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/1, tag=eoflib.atts] run function eof:effects/nightwings/gloom_cloak/1
execute if entity @a[predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/2, tag=eoflib.atts] run function eof:effects/nightwings/gloom_cloak/2

	# Loop if there are any NightWings
execute if entity @a[predicate=eof:tribes/nightwings, tag=eoflib.atts] run schedule function eof:effects/nightwings/base 1t replace

#endregion

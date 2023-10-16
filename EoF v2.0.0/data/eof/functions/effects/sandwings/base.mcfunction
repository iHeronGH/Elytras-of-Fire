#> eof:effects/sandwings/base
#
# Grants base SandWing effects.

#region
	# Base effects
effect give @a[predicate=eof:tribes/sandwings, tag=eoflib.atts] speed 1 0 true
effect give @a[predicate=eof:tribes/sandwings, tag=eoflib.atts] strength 1 1 true

	# Check for Dune Surfer effects
execute if entity @a[predicate=eof:tribes/sandwings, predicate=eof:passives/dune_surfer/1, tag=eoflib.atts] run function eof:effects/sandwings/dune_surfer/1

	# Loop if there are any SandWings
execute if entity @a[predicate=eof:tribes/sandwings, tag=eoflib.atts] run schedule function eof:effects/sandwings/base 1t replace

#endregion

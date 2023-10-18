#> eof:effects/sandwings/base
#
# Grants base SandWing effects.

#region
	# Base effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] strength 1 0 true

	# Check for Dune Surfer effects
		## Desert block aspect
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings, predicate=eof:passives/dune_surfer/desert/1] run function eof:effects/sandwings/dune_surfer/desert/1

		## Hunger aspect
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings, predicate=eof:passives/dune_surfer/hunger/1] run function eof:effects/sandwings/dune_surfer/hunger/1/activate

	# Loop if there are any SandWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] run schedule function eof:effects/sandwings/base 1t replace

#endregion

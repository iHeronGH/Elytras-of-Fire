#> eof:effects/nightwings/gloom_cloak/2
#
# Grant effects based on the NightWing passive ability Gloom Cloak.

#region
	# Gloom Cloak 2 Effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/2] speed 1 2 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/2, predicate=eoflib:movement/ground_sneak] invisibility 1 0 true

#endregion

#> eof:effects/mudwings/sibling_bond/1
#
# Grant effects based on the MudWing passive ability Sibling Bond.

#region
	# Test
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] speed 1 0 true
effect give @a[tag=eoflib.atts, tag=eof.passives.rejuvenation.active, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] speed 1 1 true

#endregion

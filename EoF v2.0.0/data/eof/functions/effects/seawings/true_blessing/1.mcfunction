#> eof:effects/seawings/true_blessing/1
#
# Grants True Blessing effects.

#region
	# True Blessing Effects
effect give @a[predicate=eof:tribes/seawings, predicate=eoflib:movement/swim, tag=eof.passives.true_blessing.active, tag=eoflib.atts] speed 4 3 true
effect give @a[predicate=eof:tribes/seawings, predicate=eoflib:movement/swim, tag=eof.passives.true_blessing.active, tag=eoflib.atts] dolphins_grace 1 0 true

	# Loop if there are any SeaWings
execute if entity @a[predicate=eof:tribes/seawings, tag=eoflib.atts] run schedule function eof:effects/seawings/true_blessing/1 1t replace

#endregion

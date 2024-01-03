#> eof:passives/seawings/true_blessing/1
#
# Grants True Blessing effects.

#region
    # True Blessing Effects
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 4 3 true
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] dolphins_grace 1 0 true

    # Loop if there are any SeaWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run schedule function eof:passives/seawings/true_blessing/1 1t replace

#endregion

#> eof:passives/seawings/true_blessing/1
#
# Grants True Blessing effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1.mcfunction", "color": "aqua"}}}]

    # True Blessing effects
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 4 3 true
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] dolphins_grace 1 0 true

    # Loop if there are any SeaWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run schedule function eof:passives/seawings/true_blessing/1 1t replace

#endregion

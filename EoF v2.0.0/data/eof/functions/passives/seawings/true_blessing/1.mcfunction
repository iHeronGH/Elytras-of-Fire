#> eof:passives/seawings/true_blessing/1
#
# Grants True Blessing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:true_blessing/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/seawings/true_blessing/1.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:true_blessing/1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/seawings/true_blessing/1.mcfunction", "color": "aqua"}}}]

    # True Blessing effects
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 4 3 true
effect give @a[tag=eof.passives.true_blessing.active, tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] dolphins_grace 1 0 true

    # Loop if there are any SeaWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run schedule function eof:passives/seawings/true_blessing/1 1t replace

#endregion

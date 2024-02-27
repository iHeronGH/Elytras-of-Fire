#> eof:abilities/activate/seawings/oceans_blessing/loop
#
# Loop Ocean's Blessing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/seawings/oceans_blessing/loop.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/loop.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/seawings/oceans_blessing/loop.mcfunction", "color": "aqua"}}}]

    # Run Ocean's Blessing
        ## User effects
effect give @a[tag=eof.seawings.oceans_blessing, predicate=eof:tribes/seawings, predicate=eoflib:location/water] speed 3 1 true
effect give @a[tag=eof.seawings.oceans_blessing, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 3 3 true

        ## Enemy effects


    # Check if ability item is still held
execute if entity @a[tag=eof.seawings.oceans_blessing, predicate=eof:tribes/seawings, predicate=!eoflib:mainhand/ability/secondary] run function eof:abilities/activate/seawings/oceans_blessing/off

    # Loop
execute if entity @a[tag=eof.seawings.oceans_blessing, predicate=eoflib:mainhand/ability/secondary, predicate=eof:tribes/seawings] run schedule function eof:abilities/activate/seawings/oceans_blessing/loop 1t

#endregion

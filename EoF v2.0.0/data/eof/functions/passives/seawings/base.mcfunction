#> eof:passives/seawings/base
#
# Grants base SeaWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:passives/seawings/base.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:passives/seawings/base.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:passives/seawings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings] night_vision 12 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:movement/swim] speed 2 1 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eoflib:location/water] conduit_power 1 0 true

    # Check for Torrent effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eof:passives/torrent/1] run function eof:passives/seawings/torrent/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eof:passives/torrent/2] run function eof:passives/seawings/torrent/2

    # Check for True Blessing effects
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active, predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/1] run function eof:passives/seawings/true_blessing/init

    # Loop if there are SeaWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run schedule function eof:passives/seawings/base 1t

#endregion

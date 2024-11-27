#> eof:abilities/entity_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/entity_effects/tidal_wave.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/entity_effects/tidal_wave.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/entity_effects/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/none] run damage @s 3 generic
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/any] run damage @s 4 generic
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/1] run effect give @s poison 3 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/2] run effect give @s poison 3 3 true
effect give @s mining_fatigue 4 0 true
effect give @s slowness 4 0 true

#endregion

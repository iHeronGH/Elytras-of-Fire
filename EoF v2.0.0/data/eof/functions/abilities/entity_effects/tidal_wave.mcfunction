#> eof:abilities/entity_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/entity_effects/tidal_wave.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/entity_effects/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Enemy effects
damage @s 2 player_attack
effect give @s mining_fatigue 4 0 true
effect give @s slowness 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/1] run effect give @s poison 3 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/2] run effect give @s poison 3 3 true

#endregion

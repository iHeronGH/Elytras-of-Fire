#> eof:abilities/entity_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/seawings/tidal_wave.mcf"]

    # Enemy effects
damage @s 2 player_attack
effect give @s mining_fatigue 4 0 true
effect give @s slowness 4 0 true
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/1] run effect give @s poison 3 1 true
execute if entity @p[tag=eoflib.ray_active, predicate=eof:passives/torrent/2] run effect give @s poison 3 3 true

#endregion

#> eof:abilities/activate/seawings/tidal_wave
#
# Activate SeaWing ability Tidal Wave.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Activate Tidal Wave
        ## User effects
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^ ^ ^1 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tidal_wave

#endregion

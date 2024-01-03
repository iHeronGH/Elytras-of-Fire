#> eof:abilities/activate/seawings/tidal_wave
#
# Activate SeaWing ability Tidal Wave.

#region
    # Activate Tidal Wave
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/seawings/tidal_wave.mcf", "color": "dark_aqua"}
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data.ability_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data.ability_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^ ^ ^1 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data.ability_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data.ability_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings[].primary[].eof_data.ability_data

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tidal_wave

#endregion

#> eof:abilities/activate/icewings/frost_breath
#
# Activate IceWing ability Frost Breath.

#region
    # Activate Frost Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/icewings/frost_breath.mcf", "color": "aqua"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].IceWings[].primary[].eof_data

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/frost_breath

#endregion

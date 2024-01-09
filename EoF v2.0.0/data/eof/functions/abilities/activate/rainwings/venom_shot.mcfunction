#> eof:abilities/activate/rainwings/venom_shot
#
# Activate RainWing ability Venom Shot.

#region
    # Activate Venom Shot
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/rainwings/venom_shot.mcf", "color": "green"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].RainWings[].primary[].eof_data

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/venom_shot

#endregion

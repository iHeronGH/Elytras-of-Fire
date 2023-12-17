#> eof:abilities/activate/icewings/frost_breath
#
# Activate IceWing ability Frost Breath.

#region
    # Activate Frost Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/icewings/frost_breath.mcf", "color": "aqua"}

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/frost_breath

#endregion

#> eof:abilities/activate/skywings/flame_breath
#
# Activate SkyWing ability Flame Breath.

#region
    # Activate Flame Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/skywings/flame_breath.mcf", "color": "dark_red"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SkyWings[].primary[].eof_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/flame_breath

#endregion

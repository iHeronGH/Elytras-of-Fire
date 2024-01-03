#> eof:abilities/activate/sandwings/flame_breath
#
# Activate SandWing ability Flame Breath.

#region
    # Activate Flame Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/sandwings/flame_breath.mcf", "color": "yellow"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SandWings[].primary[].eof_data.ability_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/flame_breath

#endregion

#> eof:abilities/activate/mudwings/flame_breath
#
# Activate MudWing ability Flame Breath.

#region
    # Activate Flame Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/mudwings/flame_breath.mcf", "color": "red"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].MudWings[].primary[].eof_data.ability_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/flame_breath

#endregion

#> eof:abilities/activate/nightwings/flame_breath
#
# Activate NightWing ability Flame Breath.

#region
    # Activate Flame Breath
        ## User Effects
tellraw @s {"text": "eof:abilities/activate/nightwings/flame_breath.mcf", "color": "dark_purple"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].NightWings[].primary[].eof_data.ability_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/flame_breath

#endregion

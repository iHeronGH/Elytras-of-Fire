#> eof:abilities/activate/nightwings/flame_breath
#
# Activate NightWing ability Flame Breath.

#region
    # Activate Flame Breath
        ## User Effects
title @s actionbar {"text": "Flame Breath activated!", "color": "red"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].NightWings[].primary[].eof_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/flame_breath

#endregion

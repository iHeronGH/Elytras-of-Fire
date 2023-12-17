#> eof:abilities/activate/mudwings/mud_swipe
#
# Activate MudWing ability Mud Swipe.

#region
    # Activate Mud Swipe
        ## User effects
        
        ## Enemy effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s slowness 6 0 true
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s weakness 4 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/mud_swipe

#endregion

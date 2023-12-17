#> eof:abilities/activate/sandwings/desert_storm
#
# Activate SandWing ability Desert Storm.

#region
    # Activate Desert Storm
        ## Announce activation
title @s actionbar {"text": "Desert Storm activated!", "color": "yellow"}

        ## User effects
effect give @s strength 10 1 true
effect give @s speed 10 2 true

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/sandwings, distance=..10] blindness 6 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/desert_storm

#endregion

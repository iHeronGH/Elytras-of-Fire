#> eof:abilities/activate/rainwings/overgrowth
#
# Activate RainWing ability Overgrowth.

#region
    # Activate Overgrowth
        ## Announce activation
title @s actionbar {"text": "Overgrowth activated!", "color": "dark_green"}

        ## User effects
effect give @s resistance 8 1 true

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/rainwings, distance=..8] slowness 8 1 true

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/overgrowth

#endregion

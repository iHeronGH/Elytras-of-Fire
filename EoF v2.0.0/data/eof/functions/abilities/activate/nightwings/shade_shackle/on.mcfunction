#> eof:abilities/activate/nightwings/shade_shackle/on
#
# Activate NightWing ability Shade Shackle.

#region
    # Activate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle activated!", "color": "dark_purple"}

        ## Start loop
tag @s add eof.nightwings.shade_shackle
function eof:abilities/activate/nightwings/shade_shackle/loop

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/shade_shackle/on

#endregion

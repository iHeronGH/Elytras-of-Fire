#> eof:abilities/activate/nightwings/shade_shackle/off
#
# Deactivate NightWing ability Shade Shackle.

#region
    # Deactivate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle deactivated!", "color": "dark_purple"}

        ## Deactivate Shade Shackle
tag @s remove eof.nightwings.shade_shackle

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/shade_shackle/off

#endregion

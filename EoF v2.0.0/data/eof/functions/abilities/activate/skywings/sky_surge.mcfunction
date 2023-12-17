#> eof:abilities/activate/skywings/sky_surge
#
# Activate SkyWing ability Sky Surge.

#region
    # Activate Sky Surge
        ## Announce activation
title @s actionbar {"text": "Sky Surge activated!", "color": "dark_red"}

        ## User effects
effect give @s strength 8 2 true
effect give @s resistance 8 0 true

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/sky_surge

#endregion

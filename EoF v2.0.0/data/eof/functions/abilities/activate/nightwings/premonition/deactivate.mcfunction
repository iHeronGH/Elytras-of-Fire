#> eof:abilities/activate/nightwings/premonition/deactivate
#
# Deactivate NightWing ability Premonition.

#region
    # Deactivate Premonition
        ## Announce deactivation
title @s actionbar {"text": "Premonition is ready to be used!", "color": "dark_gray"}

        ## Deactivate Premonition
scoreboard players reset @s eof.abilities.premonition
tag @s remove eof.abilities.premonition
advancement revoke @s only eof:abilities/nightwings/premonition

#endregion

#> eof:abilities/activate/nightwings/premonition/activate
#
# Activate NightWing ability Premonition.

#region
    # Activate Premonition
        ## Announce activation
title @s actionbar {"text": "Premonition activated!", "color": "dark_gray"}

        ## Initialise Premonition
tag @s add eof.abilities.premonition
scoreboard players operation @s eof.abilities.premonition = #eof.abilities.premonition.cooldown eof.abilities.premonition

        ## Begin loop
function eof:abilities/activate/nightwings/premonition/loop

#endregion

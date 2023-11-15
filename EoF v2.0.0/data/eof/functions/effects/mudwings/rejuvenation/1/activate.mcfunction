#> eof:effects/mudwings/rejuvenation/1/activate
#
# Activate Rejuvenation when successfully charged.

#region
    # Announce Activation
title @s actionbar {"text":"Rejuvenation charged!", "color":"red"}

    # Effect Entities
effect give @s regeneration 300 0 true
effect give @s speed 300 0 true

    # Play Particles
particle cloud ~ ~1.2 ~ 0 0.3 0 0.2 20 force @a[distance=..30]

    # Reset
        ## Correct Tags
tag @s remove eof.passives.rejuvenation.init
tag @s add eof.passives.rejuvenation.active

        ## Initiate Cooldown
schedule function eof:effects/mudwings/rejuvenation/1/cooldown 1t replace

#endregion

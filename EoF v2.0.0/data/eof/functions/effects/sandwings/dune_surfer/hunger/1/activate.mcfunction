#> eof:effects/sandwings/dune_surfer/hunger/1/activate
#
# 

#region
    # Effect Players
effect give @s saturation 1 0 true

    # Add Tags
tag @s add eof.passives.dune_surfer.hunger

    # Set scoreboard
scoreboard players set @s eof.passives.dune_surfer.hunger 800

    # Begin Loop
function eof:effects/sandwings/dune_surfer/hunger/1/cooldown

#endregion

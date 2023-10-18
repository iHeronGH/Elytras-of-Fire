#> eof:effects/sandwings/dune_surfer/hunger/1/activate
#
# 

#region
	# Effect Players
effect give @s saturation 0 0 true

	# Add Tags
tag @s add eof.passives.dune_surfer.hunger

	# Set scoreboard
scoreboard players set @s eof.passives.dune_surfer.hunger 900

	# Begin Loop
function eof:effects/sandwings/dune_surfer/hunger/1/cooldown

#endregion

#> eof:effects/skywings/skyborn/regen/1/activate
#
# 

#region
	# Announce Activation
title @s actionbar {"text":"Skyborn activated!", "color":"dark_red"}

	# Effect Players
effect give @s regeneration 12 1 true

	# Add Tags
tag @s add eof.passives.skyborn.regen

	# Set scoreboard
scoreboard players set @s eof.passives.skyborn.regen 800

	# Begin Loop
function eof:effects/skywings/skyborn/regen/1/cooldown

#endregion

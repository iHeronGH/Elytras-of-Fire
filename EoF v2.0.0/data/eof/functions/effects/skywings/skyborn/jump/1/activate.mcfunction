#> eof:effects/skywings/skyborn/jump/1/activate
#
#

#region
	# Announce Activation
title @s actionbar {"text":"Skyborn charged!","color":"dark_red"}

	# Effect Entities
effect give @s jump_boost 10 9 true

	# Play Particles
particle cloud ~ ~1.2 ~ 0 0.3 0 0.2 20 force @a[distance=..30]

	# Reset
		## Correct Tags
tag @s remove eof.passives.skyborn.init
tag @s add eof.passives.skyborn.active

		## Initiate Cooldown
schedule function eof:effects/skywings/skyborn/jump/1/cooldown 1t append

#endregion

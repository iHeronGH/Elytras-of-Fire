#> eof:effects/seawings/true_blessing/1/activate
#
# Activate True Blessing when successfully charged.

#region
	# Announce Activation
title @s actionbar {"text":"True Blessing charged!", "color":"dark_aqua"}

	# Effect Entities
function eof:effects/seawings/true_blessing/1

	# Play Particles
particle cloud ~ ~1.2 ~ 0 0.3 0 0.2 20 force @a[distance=..30]

	# Reset
		## Correct Tags
tag @s remove eof.passives.true_blessing.init
tag @s add eof.passives.true_blessing.active

#endregion

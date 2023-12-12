#> eof:abilities/activate/skywings/sky_surge
#
# Activate SkyWing ability Sky Surge.

#region
	# Activate Sky Surge
tellraw @s {"text": "eof:abilities/activate/skywings/sky_surge.mcf", "color": "dark_red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/sky_surge

#endregion

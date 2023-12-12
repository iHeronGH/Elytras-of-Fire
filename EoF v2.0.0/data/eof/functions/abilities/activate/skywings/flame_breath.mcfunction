#> eof:abilities/activate/skywings/flame_breath
#
# Activate SkyWing ability Flame Breath.

#region
	# Activate Flame Breath
tellraw @s {"text": "eof:abilities/activate/skywings/flame_breath.mcf", "color": "dark_red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/flame_breath

#endregion

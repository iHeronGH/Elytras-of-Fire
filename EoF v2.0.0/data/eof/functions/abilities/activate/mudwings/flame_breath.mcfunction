#> eof:abilities/activate/mudwings/flame_breath
#
# Activate MudWing ability Flame Breath.

#region
	# Activate Flame Breath
tellraw @s {"text": "eof:abilities/activate/mudwings/flame_breath.mcf", "color": "red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/flame_breath

#endregion

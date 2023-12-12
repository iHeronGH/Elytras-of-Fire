#> eof:abilities/activate/rainwings/overgrowth
#
# Activate RainWing ability Overgrowth.

#region
	# Activate Overgrowth
tellraw @s {"text": "eof:abilities/activate/rainwings/overgrowth.mcf", "color": "green"}

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/overgrowth

#endregion

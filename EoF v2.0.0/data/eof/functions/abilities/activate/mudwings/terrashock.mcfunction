#> eof:abilities/activate/mudwings/terrashock
#
# Activate MudWing ability Terrashock.

#region
	# Activate Terrashock
tellraw @s {"text": "eof:abilities/activate/mudwings/terrashock.mcf", "color": "red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/terrashock

#endregion

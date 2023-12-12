#> eof:abilities/activate/mudwings/mud_swipe
#
# Activate MudWing ability Mud Swipe.

#region
	# Activate Mud Swipe
tellraw @s {"text": "eof:abilities/activate/mudwings/mud_swipe.mcf", "color": "red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/mud_swipe

#endregion

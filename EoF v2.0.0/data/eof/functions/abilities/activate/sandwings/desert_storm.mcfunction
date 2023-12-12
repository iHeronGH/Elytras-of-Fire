#> eof:abilities/activate/sandwings/desert_storm
#
# Activate SandWing ability Desert Storm.

#region
	# Activate Desert Storm
tellraw @s {"text": "eof:abilities/activate/sandwings/desert_storm.mcf", "color": "yellow"}

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/desert_storm

#endregion

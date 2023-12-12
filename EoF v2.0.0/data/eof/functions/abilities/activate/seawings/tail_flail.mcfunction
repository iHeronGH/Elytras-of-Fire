#> eof:abilities/activate/seawings/tail_flail
#
# Activate SeaWing ability Tail Flail.

#region
	# Activate Tail Flail
tellraw @s {"text": "eof:abilities/activate/seawings/tail_flail.mcf", "color": "dark_aqua"}

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tail_flail

#endregion

#> eof:abilities/activate/icewings/icicle_incision
#
# Activate IceWing ability Icicle Incision.

#region
	# Activate Icicle Incision
tellraw @s {"text": "eof:abilities/activate/icewings/icicle_incision.mcf", "color": "aqua"}

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/icicle_incision

#endregion

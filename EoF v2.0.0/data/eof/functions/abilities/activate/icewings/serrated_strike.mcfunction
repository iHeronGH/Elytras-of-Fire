#> eof:abilities/activate/icewings/serrated_strike
#
# Activate IceWing ability Serrated Strike.

#region
	# Activate Serrated Strike
tellraw @s {"text": "eof:abilities/activate/icewings/serrated_strike.mcf", "color": "aqua"}

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/serrated_strike

#endregion

#> eof:abilities/activate/nightwings/shade_shackle
#
# Activate NightWing ability Shade Shackle.

#region
	# Activate Shade Shackle
tellraw @s {"text": "eof:abilities/activate/nightwings/shade_shackle.mcf", "color": "dark_purple"}

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/shade_shackle

#endregion

#> eof:abilities/activate/seawings/tidal_wave
#
# Activate SeaWing ability Tidal Wave.

#region
	# Activate Tidal Wave
tellraw @s {"text": "eof:abilities/activate/seawings/tidal_wave.mcf", "color": "dark_aqua"}

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tidal_wave

#endregion

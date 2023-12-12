#> eof:abilities/activate/rainwings/soul_sap
#
# Activate RainWing ability Soul Sap.

#region
	# Activate Soul Sap
tellraw @s {"text": "eof:abilities/activate/rainwings/soul_sap.mcf", "color": "green"}

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/soul_sap

#endregion

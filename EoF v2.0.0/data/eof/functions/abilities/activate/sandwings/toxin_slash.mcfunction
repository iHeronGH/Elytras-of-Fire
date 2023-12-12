#> eof:abilities/activate/sandwings/toxin_slash
#
# Activate SandWing ability Toxin Slash.

#region
	# Activate Toxin Slash
tellraw @s {"text": "eof:abilities/activate/sandwings/toxin_slash.mcf", "color": "yellow"}

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/toxin_slash

#endregion

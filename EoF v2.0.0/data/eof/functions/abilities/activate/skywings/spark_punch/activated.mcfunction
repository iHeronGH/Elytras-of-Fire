#> eof:abilities/activate/skywings/spark_punch/activated
#
# Activate SkyWing ability Spark Punch.

#region
	# Activate Spark Punch
tellraw @s {"text": "eof:abilities/activate/skywings/spark_punch/activated.mcf", "color": "dark_red"}

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/activated

#endregion

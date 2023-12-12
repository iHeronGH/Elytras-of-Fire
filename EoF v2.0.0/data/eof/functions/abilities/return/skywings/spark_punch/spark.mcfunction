#> eof:abilities/return/skywings/spark_punch/spark
#
# Grant the player the SkyWing ability Spark Punch, Spark mode.

#region
	# Give Spark Punch
loot replace entity @s hotbar.8 loot eof:commands/ability/skywings/spark_punch/spark

    # Correct tags
tag @s add eof.skywings.spark_mode
tag @s remove eof.skywings.smite_mode

#endregion

#> eof:abilities/return/skywings/spark_punch/smite
#
# Grant the player the SkyWing ability Spark Punch, Smite mode.

#region
	# Give Spark Punch
loot replace entity @s hotbar.8 loot eof:commands/ability/skywings/spark_punch/smite

    # Correct tags
tag @s add eof.skywings.smite_mode
tag @s remove eof.skywings.spark_mode

#endregion

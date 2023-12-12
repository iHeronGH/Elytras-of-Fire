#> eof:abilities/activate/skywings/spark_punch/used
#
# Activate SkyWing ability Spark Punch.

#region
    # Debug
tellraw @s {"text": "eof:abilities/activate/skywings/spark_punch/used", "color": "dark_red"}

	# Activate Spark Punch
tag @s add eof.skywings.toggle

    # Toggle Spark Punch mode
execute if entity @s[tag=eof.skywings.spark_mode, tag=eof.skywings.toggle] run function eof:abilities/activate/skywings/spark_punch/spark_mode
execute if entity @s[tag=eof.skywings.smite_mode, tag=eof.skywings.toggle] run function eof:abilities/activate/skywings/spark_punch/smite_mode

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/used

#endregion

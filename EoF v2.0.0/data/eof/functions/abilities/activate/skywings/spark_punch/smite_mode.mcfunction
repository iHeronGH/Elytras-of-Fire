#> eof:abilities/activate/skywings/spark_punch/smite_mode
#
# Switch SkyWing ability Spark Punch to Smite Mode on use.

#region
    # Debug
tellraw @s {"text": "eof:abilities/activate/skywings/spark_punch/smite_mode", "color": "dark_red"}

    # Switch to Smite Mode
function eof:abilities/return/skywings/spark_punch/smite

	# Remove toggle tag
tag @s remove eof.skywings.toggle

#endregion

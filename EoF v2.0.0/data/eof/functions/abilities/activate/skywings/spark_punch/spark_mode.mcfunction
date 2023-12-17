#> eof:abilities/activate/skywings/spark_punch/spark_mode
#
# Switch SkyWing ability Spark Punch to Spark Mode on use.

#region
    # Debug
tellraw @s {"text": "eof:abilities/activate/skywings/spark_punch/spark_mode", "color": "dark_red"}

    # Switch to Spark Mode
function eof:abilities/return/skywings/spark_punch/spark

    # Remove toggle tag
tag @s remove eof.skywings.toggle

#endregion

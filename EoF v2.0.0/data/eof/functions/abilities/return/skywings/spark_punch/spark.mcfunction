#> eof:abilities/return/skywings/spark_punch/spark
#
# Grant the player the SkyWing ability Spark Punch, Spark mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/spark.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/skywings/spark_punch/spark.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/spark.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/skywings/spark_punch/spark.mcfunction", "color": "aqua"}}}]

    # Give Spark Punch
loot replace entity @s hotbar.8 loot eof:commands/ability/skywings/spark_punch/spark

    # Correct tags
tag @s add eof.skywings.spark_mode
tag @s remove eof.skywings.smite_mode

#endregion

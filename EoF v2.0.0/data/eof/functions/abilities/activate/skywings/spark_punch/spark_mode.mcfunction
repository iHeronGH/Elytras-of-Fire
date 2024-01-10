#> eof:abilities/activate/skywings/spark_punch/spark_mode
#
# Switch SkyWing ability Spark Punch to Spark Mode on use.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/spark_punch/spark_mode.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/spark_punch/spark_mode.mcfunction", "color": "aqua"}}}]

    # Switch to Spark Mode
function eof:abilities/return/skywings/spark_punch/spark

    # Remove toggle tag
tag @s remove eof.skywings.toggle

#endregion

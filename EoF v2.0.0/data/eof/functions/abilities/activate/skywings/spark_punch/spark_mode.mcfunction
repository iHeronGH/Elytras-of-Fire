#> eof:abilities/activate/skywings/spark_punch/spark_mode
#
# Switch SkyWing ability Spark Punch to Spark Mode on use.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/spark_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/spark_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/spark_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/spark_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/spark_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/spark_mode.mcfunction", "color": "aqua"}}}]

    # Announce toggle
title @s actionbar [{"text": "Switched to Spark Punch: ", "color": "yellow"}, {"text": "Spark Mode!", "color": "yellow"}]

    # Switch to Spark Mode
function eof:abilities/return/skywings/spark_punch/spark

    # Remove toggle tag
tag @s remove eof.skywings.toggle

#endregion

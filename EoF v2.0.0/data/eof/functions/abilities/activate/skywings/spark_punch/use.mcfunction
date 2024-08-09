#> eof:abilities/activate/skywings/spark_punch/use
#
# Activate SkyWing ability Spark Punch.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/activate/skywings/spark_punch/used.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/activate/skywings/spark_punch/used.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/used.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/activate/skywings/spark_punch/used.mcfunction", "color": "aqua"}}}]

    # Activate Spark Punch
tag @s add eof.skywings.toggle

    # Toggle Spark Punch mode
execute if entity @s[tag=eof.skywings.toggle, tag=eof.skywings.spark_mode] run function eof:abilities/activate/skywings/spark_punch/smite_mode
execute if entity @s[tag=eof.skywings.toggle, tag=eof.skywings.smite_mode] run function eof:abilities/activate/skywings/spark_punch/spark_mode

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/used

#endregion

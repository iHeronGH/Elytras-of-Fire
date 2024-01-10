#> eof:abilities/activate/skywings/spark_punch/used
#
# Activate SkyWing ability Spark Punch.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/spark_punch/used.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:used.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/spark_punch/used.mcfunction", "color": "aqua"}}}]

    # Activate Spark Punch
tag @s add eof.skywings.toggle

    # Toggle Spark Punch mode
execute if entity @s[tag=eof.skywings.spark_mode, tag=eof.skywings.toggle] run function eof:abilities/activate/skywings/spark_punch/smite_mode
execute if entity @s[tag=eof.skywings.smite_mode, tag=eof.skywings.toggle] run function eof:abilities/activate/skywings/spark_punch/spark_mode

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/used

#endregion

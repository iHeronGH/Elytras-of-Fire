#> eof:abilities/return/skywings/spark_punch/smite
#
# Grant the player the SkyWing ability Spark Punch, Smite mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/smite.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/skywings/spark_punch/smite.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/smite.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/skywings/spark_punch/smite.mcfunction", "color": "aqua"}}}]

    # Give Spark Punch
loot replace entity @s hotbar.8 loot eof:commands/ability/skywings/spark_punch/smite

    # Correct tags
tag @s add eof.skywings.smite_mode
tag @s remove eof.skywings.spark_mode

#endregion

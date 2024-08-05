#> eof:abilities/return/skywings/spark_punch/smite
#
# Grant the player the SkyWing ability Spark Punch, Smite mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/smite.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/return/skywings/spark_punch/smite.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/smite.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/return/skywings/spark_punch/smite.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/smite.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/return/skywings/spark_punch/smite.mcfunction", "color": "aqua"}}}]

    # Give Spark Punch
execute if score @s eoflib.set_slot.tertiary matches 0 run loot replace entity @s hotbar.0 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 1 run loot replace entity @s hotbar.1 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 2 run loot replace entity @s hotbar.2 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 3 run loot replace entity @s hotbar.3 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 4 run loot replace entity @s hotbar.4 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 5 run loot replace entity @s hotbar.5 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 6 run loot replace entity @s hotbar.6 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 7 run loot replace entity @s hotbar.7 loot eof:commands/ability/skywings/spark_punch/smite
execute if score @s eoflib.set_slot.tertiary matches 8 run loot replace entity @s hotbar.8 loot eof:commands/ability/skywings/spark_punch/smite

    # Correct tags
tag @s add eof.skywings.smite_mode
tag @s remove eof.skywings.spark_mode

#endregion

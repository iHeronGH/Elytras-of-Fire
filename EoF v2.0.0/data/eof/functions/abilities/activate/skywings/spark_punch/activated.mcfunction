#> eof:abilities/activate/skywings/spark_punch/activated
#
# Activate SkyWing ability Spark Punch.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/activated.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/activated.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/activated.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/activated.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:spark_punch/activated.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/skywings/spark_punch/activated.mcfunction", "color": "aqua"}}}]

    # Activate Spark Punch
        ## User effects
        
        ## Enemy effects
execute if entity @s[tag=eof.skywings.spark_mode] run tag @e[sort=nearest, limit=1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, distance=..7] remove eof.effects.frostbite.1

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/activated

#endregion

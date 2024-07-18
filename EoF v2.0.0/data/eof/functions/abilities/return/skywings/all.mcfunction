#> eof:abilities/return/skywings/all
#
# Grant the player all SkyWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/return/skywings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/return/skywings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/return/skywings/all.mcfunction", "color": "aqua"}}}]

    # Grant SkyWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "flame_breath"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function eof:abilities/return/skywings/flame_breath
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "sky_surge"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function eof:abilities/return/skywings/sky_surge
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "spark_punch"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] unless entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/spark
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "spark_punch"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] if entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/smite

#endregion

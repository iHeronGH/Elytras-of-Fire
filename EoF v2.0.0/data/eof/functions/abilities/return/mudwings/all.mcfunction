#> eof:abilities/return/mudwings/all
#
# Grant the player all MudWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/return/mudwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/return/mudwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/return/mudwings/all.mcfunction", "color": "aqua"}}}]

    # Grant MudWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "flame_breath"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function eof:abilities/return/mudwings/flame_breath
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "terrashock"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function eof:abilities/return/mudwings/terrashock
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "mud_swipe"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run function eof:abilities/return/mudwings/mud_swipe

#endregion

#> eof:abilities/return/seawings/all
#
# Grant the player all SeaWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/return/seawings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/return/seawings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/return/seawings/all.mcfunction", "color": "aqua"}}}]

    # Grant SeaWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{eof_data: {ability_data: {archetype: "primary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "tidal_wave"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function eof:abilities/return/seawings/tidal_wave
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{eof_data: {ability_data: {archetype: "secondary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "oceans_blessing"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function eof:abilities/return/seawings/oceans_blessing
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{eof_data: {ability_data: {archetype: "tertiary"}}}] unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "tail_flail"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run function eof:abilities/return/seawings/tail_flail

#endregion

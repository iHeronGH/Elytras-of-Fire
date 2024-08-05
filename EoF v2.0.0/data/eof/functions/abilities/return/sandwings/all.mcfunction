#> eof:abilities/return/sandwings/all
#
# Grant the player all SandWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/return/sandwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/return/sandwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/return/sandwings/all.mcfunction", "color": "aqua"}}}]

    # Grant SandWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "flame_breath"}}}] if entity @s[predicate=eoflib:inventory/ability/primary_empty] run function eof:abilities/return/sandwings/flame_breath
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "desert_storm"}}}] if entity @s[predicate=eoflib:inventory/ability/secondary_empty] run function eof:abilities/return/sandwings/desert_storm
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "toxin_slash"}}}] if entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run function eof:abilities/return/sandwings/toxin_slash

#endregion

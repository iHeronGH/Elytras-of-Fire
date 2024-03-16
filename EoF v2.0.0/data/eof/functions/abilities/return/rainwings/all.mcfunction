#> eof:abilities/return/rainwings/all
#
# Grant the player all RainWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/rainwings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/rainwings/all.mcfunction", "color": "aqua"}}}]

    # Grant RainWing abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "venom_shot"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_6_empty] run function eof:abilities/return/rainwings/venom_shot
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "overgrowth"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_7_empty] run function eof:abilities/return/rainwings/overgrowth
execute unless data storage eoflib:config eoflib.admin_settings.blacklist[{eof_data: {ability_data: {name: "soul_sap"}}}] if entity @s[predicate=eoflib:inventory/hotbar/slot_8_empty] run function eof:abilities/return/rainwings/soul_sap

#endregion

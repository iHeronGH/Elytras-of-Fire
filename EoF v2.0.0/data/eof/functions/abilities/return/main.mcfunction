#> eof:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/return/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/return/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "icewings"}}] if entity @s[predicate=eof:tribes/icewings] run function eof:abilities/return/icewings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "mudwings"}}] if entity @s[predicate=eof:tribes/mudwings] run function eof:abilities/return/mudwings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "nightwings"}}] if entity @s[predicate=eof:tribes/nightwings] run function eof:abilities/return/nightwings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "rainwings"}}] if entity @s[predicate=eof:tribes/rainwings] run function eof:abilities/return/rainwings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "sandwings"}}] if entity @s[predicate=eof:tribes/sandwings] run function eof:abilities/return/sandwings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "seawings"}}] if entity @s[predicate=eof:tribes/seawings] run function eof:abilities/return/seawings/all
execute unless data storage eoflib:config eoflib.admin_settings.blacklist.tribe[{ability_data: {tribe: "skywings"}}] if entity @s[predicate=eof:tribes/skywings] run function eof:abilities/return/skywings/all

#endregion

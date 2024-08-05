#> eof:load/gen/storages
#
# Generates abstract storage containers for Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire.

    # Regenerate containers
        ## Ability data
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/icewings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/mudwings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/nightwings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/rainwings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/sandwings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/seawings
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/storages/ability_data/skywings

#endregion

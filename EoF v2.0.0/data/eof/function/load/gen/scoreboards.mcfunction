#> eof:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/scoreboards.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:gen/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Reset variables
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/del/scoreboards

        ## Ability objectives
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/scoreboards/ability_objectives

        ## Passive objectives
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/scoreboards/passive_objectives

    # Scoreholders
        ## Ability variables
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/scoreboards/ability_variables

        ## Passive variables
execute unless predicate eoflib:settings/admin/save_settings run function eof:load/gen/scoreboards/passive_variables

#endregion

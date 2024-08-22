#> eof:loop/20t/correct_teams
#
# Resolve Pyrrhian tribe teams for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:loop/20t/correct_teams.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:loop/20t/correct_teams.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_teams.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:loop/20t/correct_teams.mcfunction", "color": "aqua"}}}]

    # Join teams
team join IceWing @a[tag=IceWing, tag=!eoflib.admin]
team join MudWing @a[tag=MudWing, tag=!eoflib.admin]
team join NightWing @a[tag=NightWing, tag=!eoflib.admin]
team join RainWing @a[tag=RainWing, tag=!eoflib.admin]
team join SandWing @a[tag=SandWing, tag=!eoflib.admin]
team join SeaWing @a[tag=SeaWing, tag=!eoflib.admin]
team join SkyWing @a[tag=SkyWing, tag=!eoflib.admin]

#endregion

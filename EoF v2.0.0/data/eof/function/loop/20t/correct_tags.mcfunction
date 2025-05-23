#> eof:loop/20t/correct_tags
#
# Resolve Pyrrhian tribe tags for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_tags.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:loop/20t/correct_tags.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_tags.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:loop/20t/correct_tags.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=5..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_tags.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:loop/20t/correct_tags.mcfunction", "color": "aqua"}}}]

    # Remove tags
tag @a[tag=IceWing, predicate=!eof:tribes/icewings] remove IceWing
tag @a[tag=MudWing, predicate=!eof:tribes/mudwings] remove MudWing
tag @a[tag=NightWing, predicate=!eof:tribes/nightwings] remove NightWing
tag @a[tag=RainWing, predicate=!eof:tribes/rainwings] remove RainWing
tag @a[tag=SandWing, predicate=!eof:tribes/sandwings] remove SandWing
tag @a[tag=SeaWing, predicate=!eof:tribes/seawings] remove SeaWing
tag @a[tag=SkyWing, predicate=!eof:tribes/skywings] remove SkyWing

    # Apply tags
tag @a[tag=!IceWing, predicate=eof:tribes/icewings] add IceWing
tag @a[tag=!MudWing, predicate=eof:tribes/mudwings] add MudWing
tag @a[tag=!NightWing, predicate=eof:tribes/nightwings] add NightWing
tag @a[tag=!RainWing, predicate=eof:tribes/rainwings] add RainWing
tag @a[tag=!SandWing, predicate=eof:tribes/sandwings] add SandWing
tag @a[tag=!SeaWing, predicate=eof:tribes/seawings] add SeaWing
tag @a[tag=!SkyWing, predicate=eof:tribes/skywings] add SkyWing

#endregion

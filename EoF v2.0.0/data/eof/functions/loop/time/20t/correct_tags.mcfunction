#> eof:loop/time/20t/correct_tags
#
# Resolve Pyrrhian tribe tags for all players.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_tags.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/loop/time/20t/correct_tags.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:20t/correct_tags.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/loop/time/20t/correct_tags.mcfunction", "color": "aqua"}}}]

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

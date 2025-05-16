#> eof:reset/cooldowns/own
#
# Reset cooldowns for passives and abilities of a user's own tribe.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/own.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:reset/cooldowns/own.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/own.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:reset/cooldowns/own.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/own.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:reset/cooldowns/own.mcfunction", "color": "aqua"}}}]

    # Remove own tribe cooldowns
execute if entity @s[predicate=eof:abilities/cooldowns/icewings, predicate=eof:tribes/icewings] run function eof:reset/cooldowns/own/icewings
execute if entity @s[predicate=eof:abilities/cooldowns/mudwings, predicate=eof:tribes/mudwings] run function eof:reset/cooldowns/own/mudwings
execute if entity @s[predicate=eof:abilities/cooldowns/nightwings, predicate=eof:tribes/nightwings] run function eof:reset/cooldowns/own/nightwings
execute if entity @s[predicate=eof:abilities/cooldowns/rainwings, predicate=eof:tribes/rainwings] run function eof:reset/cooldowns/own/rainwings
execute if entity @s[predicate=eof:abilities/cooldowns/sandwings, predicate=eof:tribes/sandwings] run function eof:reset/cooldowns/own/sandwings
execute if entity @s[predicate=eof:abilities/cooldowns/seawings, predicate=eof:tribes/seawings] run function eof:reset/cooldowns/own/seawings
execute if entity @s[predicate=eof:abilities/cooldowns/skywings, predicate=eof:tribes/skywings] run function eof:reset/cooldowns/own/skywings

#endregion

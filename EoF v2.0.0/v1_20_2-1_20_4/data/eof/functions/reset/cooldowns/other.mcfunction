#> eof:reset/cooldowns/other
#
# Reset cooldowns for passives and abilities when a user changes tribes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/other.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:reset/cooldowns/other.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/other.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:reset/cooldowns/other.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/other.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:reset/cooldowns/other.mcfunction", "color": "aqua"}}}]

    # Remove other tribe cooldowns
execute if entity @a[predicate=eof:abilities/cooldowns/icewings, predicate=!eof:tribes/icewings] run function eof:reset/cooldowns/other/icewings
execute if entity @a[predicate=eof:abilities/cooldowns/mudwings, predicate=!eof:tribes/mudwings] run function eof:reset/cooldowns/other/mudwings
execute if entity @a[predicate=eof:abilities/cooldowns/nightwings, predicate=!eof:tribes/nightwings] run function eof:reset/cooldowns/other/nightwings
execute if entity @a[predicate=eof:abilities/cooldowns/rainwings, predicate=!eof:tribes/rainwings] run function eof:reset/cooldowns/other/rainwings
execute if entity @a[predicate=eof:abilities/cooldowns/sandwings, predicate=!eof:tribes/sandwings] run function eof:reset/cooldowns/other/sandwings
execute if entity @a[predicate=eof:abilities/cooldowns/seawings, predicate=!eof:tribes/seawings] run function eof:reset/cooldowns/other/seawings
execute if entity @a[predicate=eof:abilities/cooldowns/skywings, predicate=!eof:tribes/skywings] run function eof:reset/cooldowns/other/skywings

#endregion

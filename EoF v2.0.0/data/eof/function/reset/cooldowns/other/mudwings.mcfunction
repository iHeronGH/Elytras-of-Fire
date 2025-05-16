#> eof:reset/cooldowns/other/mudwings
#
# Reset all MudWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:reset/cooldowns/other/mudwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/mudwings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:reset/cooldowns/other/mudwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/mudwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:reset/cooldowns/other/mudwings.mcfunction", "color": "aqua"}}}]

    # Reset MudWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.mudwing_flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.terrashock 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.mud_swipe 0

        ## Reset passives
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.rejuvenation 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.sibling_bond 0

#endregion

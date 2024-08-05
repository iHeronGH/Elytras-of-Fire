#> eof:reset/cooldowns/mudwings
#
# Reset all MudWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:reset/cooldowns/mudwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:reset/cooldowns/mudwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/mudwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:reset/cooldowns/mudwings.mcfunction", "color": "aqua"}}}]

    # Reset MudWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.mudwing_flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.terrashock 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.abilities.mud_swipe 0

        ## Reset passives
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.rejuvenation 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.sibling_bond 0

#endregion

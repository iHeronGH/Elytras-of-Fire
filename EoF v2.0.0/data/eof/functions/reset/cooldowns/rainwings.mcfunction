#> eof:reset/cooldowns/rainwings
#
# Reset all RainWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/reset/cooldowns/rainwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/reset/cooldowns/rainwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/rainwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/reset/cooldowns/rainwings.mcfunction", "color": "aqua"}}}]

    # Reset RainWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.venom_shot 0
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.overgrowth 0
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.soul_sap 0

        ## Reset passives

#endregion

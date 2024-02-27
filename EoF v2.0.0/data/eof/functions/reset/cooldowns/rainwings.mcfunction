#> eof:reset/cooldowns/rainwings
#
# Reset all RainWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/reset/cooldowns/rainwings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/rainwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/reset/cooldowns/rainwings.mcfunction", "color": "aqua"}}}]

    # Reset RainWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.venom_shot 0
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.overgrowth 0
scoreboard players set @a[predicate=!eof:tribes/rainwings] eof.abilities.soul_sap 0

        ## Reset passives

#endregion

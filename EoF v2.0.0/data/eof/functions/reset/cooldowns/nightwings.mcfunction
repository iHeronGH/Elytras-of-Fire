#> eof:reset/cooldowns/nightwings
#
# Reset all NightWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/reset/cooldowns/nightwings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/nightwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/reset/cooldowns/nightwings.mcfunction", "color": "aqua"}}}]

    # Reset NightWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/nightwings] eof.abilities.nightwing_flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/nightwings] eof.abilities.premonition 0

        ## Reset passives

#endregion

#> eof:reset/cooldowns/icewings
#
# Reset all IceWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/icewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/reset/cooldowns/icewings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/icewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/reset/cooldowns/icewings.mcfunction", "color": "aqua"}}}]

    # Reset IceWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/icewings] eof.abilities.frost_breath 0
scoreboard players set @a[predicate=!eof:tribes/icewings] eof.abilities.serrated_strike 0

        ## Reset passives

#endregion

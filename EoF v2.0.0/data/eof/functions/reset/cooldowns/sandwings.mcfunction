#> eof:reset/cooldowns/sandwings
#
# Reset all SandWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/reset/cooldowns/sandwings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/sandwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/reset/cooldowns/sandwings.mcfunction", "color": "aqua"}}}]

    # Reset SandWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/sandwings] eof.abilities.sandwing_flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/sandwings] eof.abilities.desert_storm 0

        ## Reset passives
scoreboard players set @a[predicate=!eof:tribes/sandwings] eof.passives.dune_surfer.hunger 0

#endregion

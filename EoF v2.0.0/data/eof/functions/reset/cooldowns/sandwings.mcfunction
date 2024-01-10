#> eof:reset/cooldowns/sandwings
#
# Reset all SandWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/sandwings.mcfunction", "color": "aqua"}}}]

    # Reset SandWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/sandwings] eof.passives.dune_surfer.hunger 0
# say SandWing cooldowns reset.

#endregion

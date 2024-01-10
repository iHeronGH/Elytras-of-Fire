#> eof:reset/cooldowns/mudwings
#
# Reset all MudWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/mudwings.mcfunction", "color": "aqua"}}}]

    # Reset MudWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.rejuvenation 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.sibling_bond 0
# say MudWing cooldowns reset.

#endregion

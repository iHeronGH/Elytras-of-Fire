#> eof:reset/cooldowns/skywings
#
# Reset all SkyWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/skywings.mcfunction", "color": "aqua"}}}]

    # Reset SkyWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.jump 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.regen 0
# say SkyWing cooldowns reset.

#endregion

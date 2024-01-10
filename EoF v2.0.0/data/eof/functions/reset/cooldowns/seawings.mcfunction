#> eof:reset/cooldowns/seawings
#
# Reset all SeaWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:seawings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/seawings.mcfunction", "color": "aqua"}}}]

    # Reset SeaWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.true_blessing 0
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.torrent 0
# say SeaWing cooldowns reset.

#endregion

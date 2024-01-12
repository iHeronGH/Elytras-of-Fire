#> eof:reset/cooldowns/seawings
#
# Reset all SeaWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/seawings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/seawings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/seawings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/seawings.mcfunction", "color": "aqua"}}}]

    # Reset SeaWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.true_blessing 0
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.torrent 0

#endregion

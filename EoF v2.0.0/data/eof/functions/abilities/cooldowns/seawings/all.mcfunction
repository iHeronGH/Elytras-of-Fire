#> eof:abilities/cooldowns/seawings/all
#
# Execute cooldown functions for all SeaWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/cooldowns/seawings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/cooldowns/seawings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/seawings, predicate=eof:abilities/cooldowns/seawings/tidal_wave] run function eof:abilities/cooldowns/seawings/tidal_wave
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/seawings, predicate=eof:abilities/cooldowns/seawings/tail_flail] run function eof:abilities/cooldowns/seawings/tail_flail

#endregion

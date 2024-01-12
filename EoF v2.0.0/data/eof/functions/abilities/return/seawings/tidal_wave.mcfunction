#> eof:abilities/return/seawings/tidal_wave
#
# Grant the player the SeaWing ability Tidal Wave.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Give Tidal Wave
loot replace entity @s hotbar.6 loot eof:commands/ability/seawings/tidal_wave

#endregion

#> eof:abilities/block_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/block_effects/tidal_wave.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/block_effects/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Enemy effects
particle block water ~ ~ ~ 0 0 0 0.0875 40
particle fishing ~ ~ ~ 0 0 0 0.05 10
particle block snow ~ ~ ~ 0 0 0 0.05 10

#endregion

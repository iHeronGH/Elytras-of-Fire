#> eof:abilities/block_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/block_effects/tidal_wave.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/block_effects/tidal_wave.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/block_effects/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Enemy effects
particle minecraft:block{"block_state": "minecraft:water"} ~ ~ ~ 0 0 0 0.0875 40
particle fishing ~ ~ ~ 0 0 0 0.05 10
particle minecraft:block{"block_state": "minecraft:snow"} ~ ~ ~ 0 0 0 0.05 10

#endregion

#> eof:abilities/block_effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/block_effects/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/block_effects/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/block_effects/main.mcfunction", "color": "aqua"}}}]

    # Determine ability
execute if data storage eoflib_raycast:ability {ability_data: {name: "frost_breath"}} run function eof:abilities/block_effects/frost_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "flame_breath"}} run function eof:abilities/block_effects/flame_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "venom_shot"}} run function eof:abilities/block_effects/venom_shot
execute if data storage eoflib_raycast:ability {ability_data: {name: "tidal_wave"}} run function eof:abilities/block_effects/tidal_wave

#endregion

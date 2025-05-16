#> eof:abilities/activate/nightwings/shade_shackle/toggle
#
# Toggle NightWing ability Shade Shackle on or off

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/toggle.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/toggle.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/toggle.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/toggle.mcfunction", "color": "aqua"}}}]

    # Activate Shade Shackle
tag @s add eof.nightwings.toggle

    # Toggle Shade Shackle mode
execute if entity @s[tag=eof.nightwings.toggle, tag=!eof.nightwings.shade_shackle] run function eof:abilities/activate/nightwings/shade_shackle/on
execute if entity @s[tag=eof.nightwings.toggle, tag=eof.nightwings.shade_shackle] run function eof:abilities/activate/nightwings/shade_shackle/off

#endregion

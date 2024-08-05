#> eof:abilities/activate/seawings/oceans_blessing/toggle
#
# Toggle NightWing ability Shade Shackle on or off

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/activate/seawings/oceans_blessing/toggle.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/toggle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/activate/seawings/oceans_blessing/toggle.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/toggle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/activate/seawings/oceans_blessing/toggle.mcfunction", "color": "aqua"}}}]

    # Activate Shade Shackle
tag @s add eof.seawings.toggle

    # Toggle Shade Shackle mode
execute if entity @s[tag=eof.seawings.toggle, tag=!eof.seawings.oceans_blessing] run function eof:abilities/activate/seawings/oceans_blessing/on
execute if entity @s[tag=eof.seawings.toggle, tag=eof.seawings.oceans_blessing] run function eof:abilities/activate/seawings/oceans_blessing/off

#endregion

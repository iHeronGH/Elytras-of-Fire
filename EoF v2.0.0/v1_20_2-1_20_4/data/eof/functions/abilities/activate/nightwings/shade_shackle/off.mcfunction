#> eof:abilities/activate/nightwings/shade_shackle/off
#
# Deactivate NightWing ability Shade Shackle.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/off.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/off.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/off.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/off.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/off.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/off.mcfunction", "color": "aqua"}}}]

    # Deactivate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle deactivated!", "color": "dark_purple"}

        ## Deactivate Shade Shackle
tag @s remove eof.nightwings.shade_shackle

    # Disable toggle check
tag @s remove eof.nightwings.toggle

#endregion

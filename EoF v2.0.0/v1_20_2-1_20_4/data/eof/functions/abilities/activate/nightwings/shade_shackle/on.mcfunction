#> eof:abilities/activate/nightwings/shade_shackle/on
#
# Activate NightWing ability Shade Shackle.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/on.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/on.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/on.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/on.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/on.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/on.mcfunction", "color": "aqua"}}}]

    # Activate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle activated!", "color": "dark_purple"}

        ## Start loop
tag @s add eof.nightwings.shade_shackle
function eof:abilities/activate/nightwings/shade_shackle/loop

    # Disable toggle check
tag @s remove eof.nightwings.toggle

#endregion

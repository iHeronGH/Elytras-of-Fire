#> eof:abilities/activate/seawings/oceans_blessing/on
#
# Activate SeaWing ability Ocean's Blessing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/on.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/seawings/oceans_blessing/on.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/on.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/seawings/oceans_blessing/on.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/on.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/seawings/oceans_blessing/on.mcfunction", "color": "aqua"}}}]

    # Activate Ocean's Blessing
        ## Announce activation
title @s actionbar {"text": "Ocean's Blessing activated!", "color": "dark_aqua"}

        ## Start loop
tag @s add eof.seawings.oceans_blessing
function eof:abilities/activate/seawings/oceans_blessing/loop

    # Disable toggle check
tag @s remove eof.seawings.toggle

#endregion

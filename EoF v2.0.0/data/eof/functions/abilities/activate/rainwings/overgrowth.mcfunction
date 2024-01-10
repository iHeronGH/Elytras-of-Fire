#> eof:abilities/activate/rainwings/overgrowth
#
# Activate RainWing ability Overgrowth.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:overgrowth.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/overgrowth.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:overgrowth.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/overgrowth.mcfunction", "color": "aqua"}}}]

    # Activate Overgrowth
        ## Announce activation
title @s actionbar {"text": "Overgrowth activated!", "color": "dark_green"}

        ## User effects
effect give @s resistance 8 1 true

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/rainwings, distance=..8] slowness 8 1 true

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/overgrowth

#endregion

#> eof:abilities/activate/nightwings/shade_shackle/off
#
# Deactivate NightWing ability Shade Shackle.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/off.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/shade_shackle/off.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/off.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/shade_shackle/off.mcfunction", "color": "aqua"}}}]

    # Deactivate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle deactivated!", "color": "dark_purple"}

        ## Deactivate Shade Shackle
tag @s remove eof.nightwings.shade_shackle

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/shade_shackle/off

#endregion

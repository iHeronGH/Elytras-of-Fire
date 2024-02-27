#> eof:abilities/activate/nightwings/shade_shackle/on
#
# Activate NightWing ability Shade Shackle.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/on.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/shade_shackle/on.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/on.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/shade_shackle/on.mcfunction", "color": "aqua"}}}]

    # Activate Shade Shackle
        ## Announce activation
title @s actionbar {"text": "Shade Shackle activated!", "color": "dark_purple"}

        ## Start loop
tag @s add eof.nightwings.shade_shackle
function eof:abilities/activate/nightwings/shade_shackle/loop

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/shade_shackle/on

#endregion

#> eof:abilities/activate/nightwings/premonition/deactivate
#
# Deactivate NightWing ability Premonition.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/premonition/deactivate.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/nightwings/premonition/deactivate.mcfunction", "color": "aqua"}}}]

    # Deactivate Premonition
        ## Announce deactivation
title @s actionbar {"text": "Premonition is ready to be used!", "color": "dark_gray"}

        ## Deactivate Premonition
scoreboard players reset @s eof.abilities.premonition
tag @s remove eof.abilities.premonition
advancement revoke @s only eof:abilities/nightwings/premonition

#endregion

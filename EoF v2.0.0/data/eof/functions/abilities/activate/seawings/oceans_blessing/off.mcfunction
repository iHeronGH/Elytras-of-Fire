#> eof:abilities/activate/seawings/oceans_blessing/off
#
# Deactivate SeaWing ability Ocean's Blessing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/off.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/seawings/oceans_blessing/off.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing/off.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/seawings/oceans_blessing/off.mcfunction", "color": "aqua"}}}]

    # Deactivate Ocean's Blessing
        ## Announce activation
title @s actionbar {"text": "Ocean's Blessing deactivated!", "color": "dark_aqua"}

        ## Deactivate Ocean's Blessing
tag @s remove eof.seawings.oceans_blessing

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/oceans_blessing/off

#endregion

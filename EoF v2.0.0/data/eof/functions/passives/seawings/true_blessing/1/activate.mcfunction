#> eof:passives/seawings/true_blessing/1/activate
#
# Activate True Blessing when successfully charged.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/activate.mcfunction", "color": "aqua"}}}]

    # Announce activation
title @s actionbar {"text":"True Blessing charged!", "color":"dark_aqua"}

    # Effect entities
function eof:passives/seawings/true_blessing/1

    # Play particles
particle cloud ~ ~1.2 ~ 0 0.3 0 0.2 20 force @a[distance=..30]

    # Reset
        ## Resolve tags
tag @s remove eof.passives.true_blessing.init
tag @s add eof.passives.true_blessing.active

#endregion

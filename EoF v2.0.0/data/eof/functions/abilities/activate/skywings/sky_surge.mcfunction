#> eof:abilities/activate/skywings/sky_surge
#
# Activate SkyWing ability Sky Surge.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/sky_surge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/sky_surge.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:skywings/sky_surge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/skywings/sky_surge.mcfunction", "color": "aqua"}}}]

    # Activate Sky Surge
        ## Announce activation
title @s actionbar {"text": "Sky Surge activated!", "color": "dark_red"}

        ## User effects
effect give @s strength 8 2 true
effect give @s resistance 8 0 true

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/sky_surge

#endregion

#> eof:passives/skywings/skyborn/regen/1/deactivate
#
# Announce Skyborn's regen aspect as ready.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/regen/1/deactivate.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/regen/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
title @s actionbar {"text": "Skyborn ready!", "color": "dark_red"}

    # Remove tag
tag @s remove eof.passives.skyborn.regen

    # Reset score
scoreboard players reset @s eof.passives.skyborn.regen

#endregion

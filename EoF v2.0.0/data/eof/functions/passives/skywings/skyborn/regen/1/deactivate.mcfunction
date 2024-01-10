#> eof:passives/skywings/skyborn/regen/1/deactivate
#
# Announce Skyborn's regen aspect as ready.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/regen/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
title @s actionbar {"text": "Skyborn ready!", "color": "dark_red"}

    # Remove tag
tag @s remove eof.passives.skyborn.regen

    # Reset score
scoreboard players reset @s eof.passives.skyborn.regen

#endregion

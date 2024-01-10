#> eof:passives/skywings/skyborn/regen/1/activate
#
# Activate Skyborn's Regen aspect when successfully charged.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/regen/1/activate.mcfunction", "color": "aqua"}}}]

    # Announce activation
title @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] actionbar {"text":"Skyborn activated!", "color":"dark_red"}

    # Effect players
effect give @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] regeneration 12 1 true

    # Add tags
tag @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] add eof.passives.skyborn.regen

    # Set scoreboard
scoreboard players set @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] eof.passives.skyborn.regen 800

    # Begin loop
function eof:passives/skywings/skyborn/regen/1/cooldown

#endregion

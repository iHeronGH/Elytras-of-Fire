#> eof:passives/skywings/skyborn/jump/init
#
# Grant effects based on the skywing passive ability skyborn.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:init.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/jump/init.mcfunction", "color": "aqua"}}}]

    # Add tags
tag @a[tag=eoflib.atts, tag=!eof.passives.skyborn.init, tag=!eof.passives.skyborn.active, predicate=eof:passives/skyborn/jump/1] add eof.passives.skyborn.init

    # Charge
function eof:passives/skywings/skyborn/jump/1/charge

#endregion

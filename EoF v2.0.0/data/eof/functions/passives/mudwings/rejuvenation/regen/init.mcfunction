#> eof:passives/mudwings/rejuvenation/regen/init
#
# Initialise Rejuvenation charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rejuvenation/regen/init.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/mudwings/rejuvenation/regen/init.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rejuvenation/regen/init.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/mudwings/rejuvenation/regen/init.mcfunction", "color": "aqua"}}}]

    # Add tags
tag @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.regen.init, tag=!eof.passives.rejuvenation.regen.active, predicate=eof:passives/rejuvenation/regen/1] add eof.passives.rejuvenation.regen.init

    # Charge
function eof:passives/mudwings/rejuvenation/regen/1/charge

#endregion

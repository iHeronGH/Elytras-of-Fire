#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for Skyborn charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/skywings/skyborn/jump/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/skywings/skyborn/jump/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 21..30 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"dark_red"},{"text":"███████", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 31..40 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"dark_red"},{"text":"██████", "color":"#300000"},"]"]

#endregion

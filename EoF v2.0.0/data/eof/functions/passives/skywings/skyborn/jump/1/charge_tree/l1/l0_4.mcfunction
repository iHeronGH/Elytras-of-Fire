#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_4
#
# Handles scores 81-100 for Skyborn charging.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:l0_4.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/jump/1/charge_tree/l1/l0_4.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 81..90 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█████████", "color":"dark_red"},{"text":"█", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 91..100 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██████████", "color":"dark_red"},"]"]

#endregion

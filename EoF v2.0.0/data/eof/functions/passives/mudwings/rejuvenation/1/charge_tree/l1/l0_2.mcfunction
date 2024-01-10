#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_2
#
# Handles scores 41-60 for Rejuvenation charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l0_2.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/charge_tree/l1/l0_2.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l0_2.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/charge_tree/l1/l0_2.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 1441..1800 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"█████", "color":"red"}, {"text":"█████", "color":"#602020"},"]"]
execute if score @s eof.passives.rejuvenation matches 1801..2160 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"██████", "color":"red"}, {"text":"████", "color":"#602020"},"]"]

#endregion

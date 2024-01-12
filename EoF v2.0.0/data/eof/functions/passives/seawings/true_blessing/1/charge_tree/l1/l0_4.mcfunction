#> eof:passives/seawings/true_blessing/1/charge_tree/l1/l0_4
#
# Handles scores 81-100 for True Blessing charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_4.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_4.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_4.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_4.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing=81..90}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█████████", "color":"dark_aqua"},{"text":"█", "color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=91..100}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██████████", "color":"dark_aqua"},"]"]

#endregion

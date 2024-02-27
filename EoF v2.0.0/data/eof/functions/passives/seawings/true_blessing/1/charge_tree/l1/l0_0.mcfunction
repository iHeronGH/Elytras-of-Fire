#> eof:passives/seawings/true_blessing/1/charge_tree/l1/l0_0
#
# Handles scores 1-20 for True Blessing charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_0.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_0.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_0.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_0.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing=1..10}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█", "color":"dark_aqua"},{"text":"█████████", "color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=11..20}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██", "color":"dark_aqua"},{"text":"████████", "color":"#204464"},"]"]

#endregion

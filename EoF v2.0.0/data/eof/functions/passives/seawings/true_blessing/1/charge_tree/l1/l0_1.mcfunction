#> eof:passives/seawings/true_blessing/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for True Blessing charging.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:l0_1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing=21..30}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"dark_aqua"},{"text":"███████", "color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=31..40}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"dark_aqua"},{"text":"██████", "color":"#204464"},"]"]

#endregion

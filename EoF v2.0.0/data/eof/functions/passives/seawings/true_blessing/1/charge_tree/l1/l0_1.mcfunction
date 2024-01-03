#> eof:passives/seawings/true_blessing/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for True Blessing charging.

#region
    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing=21..30}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"dark_aqua"},{"text":"███████", "color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=31..40}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"dark_aqua"},{"text":"██████", "color":"#204464"},"]"]

#endregion

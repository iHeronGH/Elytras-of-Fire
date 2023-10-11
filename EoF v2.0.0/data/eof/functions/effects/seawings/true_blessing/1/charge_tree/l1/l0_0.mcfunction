#region
	# Charge Tree Layer 0
execute if entity @s[scores={eof.passives.true_blessing=1..10}] run title @s actionbar [{"text":"[","color":"dark_gray"},{"text":"█","color":"dark_aqua"},{"text":"█████████","color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=11..20}] run title @s actionbar [{"text":"[","color":"dark_gray"},{"text":"██","color":"dark_aqua"},{"text":"████████","color":"#204464"},"]"]
#endregion

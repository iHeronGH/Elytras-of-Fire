#> eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_2
#
# Handles scores 1-20 for Rejuvenation charging.

#region
	# Charge Tree Layer 0
execute if entity @s[scores={eof.passives.rejuvenation=1441..1800}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█████", "color":"red"},{"text":"█████", "color":"#602020"},"]"]
execute if entity @s[scores={eof.passives.rejuvenation=1801..2160}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██████", "color":"red"},{"text":"████", "color":"#602020"},"]"]

#endregion

#> eof:effects/skywings/skyborn/jump/1/charge_tree/l1/l0_0
#
#

#region
	# Charge Tree Layer 0
execute if entity @s[scores={eof.passives.skyborn.jump=1..10}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█", "color":"dark_red"},{"text":"█████████", "color":"#300000"},"]"]
execute if entity @s[scores={eof.passives.skyborn.jump=11..20}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██", "color":"dark_red"},{"text":"████████", "color":"#300000"},"]"]

#endregion

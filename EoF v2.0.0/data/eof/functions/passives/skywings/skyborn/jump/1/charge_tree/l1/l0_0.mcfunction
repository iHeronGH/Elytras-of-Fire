#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_0
#
# Handles scores 1-20 for Skyborn charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 1..10 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█", "color":"dark_red"},{"text":"█████████", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 11..20 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██", "color":"dark_red"},{"text":"████████", "color":"#300000"},"]"]

#endregion

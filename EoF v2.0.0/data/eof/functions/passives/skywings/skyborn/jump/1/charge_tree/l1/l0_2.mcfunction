#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_2
#
# Handles scores 41-60 for Skyborn charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 41..50 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█████", "color":"dark_red"},{"text":"█████", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 51..60 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██████", "color":"dark_red"},{"text":"████", "color":"#300000"},"]"]

#endregion

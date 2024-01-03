#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_4
#
# Handles scores 81-100 for Skyborn charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 81..90 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"█████████", "color":"dark_red"},{"text":"█", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 91..100 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"██████████", "color":"dark_red"},"]"]

#endregion

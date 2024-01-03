#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for Skyborn charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 21..30 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"dark_red"},{"text":"███████", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 31..40 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"dark_red"},{"text":"██████", "color":"#300000"},"]"]

#endregion

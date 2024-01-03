#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3
#
# Handles scores 61-80 for Skyborn charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 61..70 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███████", "color":"dark_red"},{"text":"███", "color":"#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 71..80 run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████████", "color":"dark_red"},{"text":"██", "color":"#300000"},"]"]

#endregion

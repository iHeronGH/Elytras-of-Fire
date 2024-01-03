#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_3
#
# Handles scores 61-80 for Rejuvenation charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 2161..2520 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"███████", "color":"red"}, {"text":"███", "color":"#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 2521..2880 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"████████", "color":"red"}, {"text":"██", "color":"#602020"}, "]"]

#endregion

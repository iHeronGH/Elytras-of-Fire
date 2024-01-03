#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_2
#
# Handles scores 41-60 for Rejuvenation charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 1441..1800 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"█████", "color":"red"}, {"text":"█████", "color":"#602020"},"]"]
execute if score @s eof.passives.rejuvenation matches 1801..2160 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"██████", "color":"red"}, {"text":"████", "color":"#602020"},"]"]

#endregion

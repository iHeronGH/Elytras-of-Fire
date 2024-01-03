#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_4
#
# Handles scores 81-100 for Rejuvenation charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 2881..3240 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"█████████", "color":"red"}, {"text":"█", "color":"#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 3241..3600 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"██████████", "color":"red"}, "]"]

#endregion

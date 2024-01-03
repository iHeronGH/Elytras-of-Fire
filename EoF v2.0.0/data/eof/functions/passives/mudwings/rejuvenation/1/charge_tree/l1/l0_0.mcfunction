#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_0
#
# Handles scores 1-20 for Rejuvenation charging.

#region
   # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 1..360 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"█", "color":"red"}, {"text":"█████████", "color":"#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 361..720 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"██", "color":"red"}, {"text":"████████", "color":"#602020"}, "]"]

#endregion

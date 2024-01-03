#> eof:passives/mudwings/rejuvenation/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for Rejuvenation charging.

#region
    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 721..1080 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"███", "color":"red"}, {"text":"███████", "color":"#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 1081..1440 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"████", "color":"red"}, {"text":"██████", "color":"#602020"}, "]"]
  
#endregion

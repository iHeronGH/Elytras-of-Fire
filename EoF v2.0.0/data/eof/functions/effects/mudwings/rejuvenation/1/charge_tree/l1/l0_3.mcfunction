#> eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_3
#
# Handles scores 1-20 for Rejuvenation charging.

#region
    # Charge Tree Layer 0
execute if entity @s[scores={eof.passives.rejuvenation=2161..2520}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███████", "color":"red"},{"text":"███", "color":"#602020"},"]"]
execute if entity @s[scores={eof.passives.rejuvenation=2521..2880}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████████", "color":"red"},{"text":"██", "color":"#602020"},"]"]

#endregion

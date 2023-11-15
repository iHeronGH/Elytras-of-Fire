#> eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_1
#
# Handles scores 1-20 for Rejuvenation charging.

#region
    # Charge Tree Layer 0
execute if entity @s[scores={eof.passives.rejuvenation=721..1080}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"red"},{"text":"███████", "color":"#602020"},"]"]
execute if entity @s[scores={eof.passives.rejuvenation=1081..1440}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"red"},{"text":"██████", "color":"#602020"},"]"]

#endregion

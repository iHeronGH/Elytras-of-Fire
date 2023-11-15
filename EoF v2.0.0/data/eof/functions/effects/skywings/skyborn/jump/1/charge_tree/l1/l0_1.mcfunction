#> eof:effects/skywings/skyborn/jump/1/charge_tree/l1/l0_1
#
#

#region
    # Charge Tree Layer 0
execute if entity @s[scores={eof.passives.skyborn.jump=21..30}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███", "color":"dark_red"},{"text":"███████", "color":"#300000"},"]"]
execute if entity @s[scores={eof.passives.skyborn.jump=31..40}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████", "color":"dark_red"},{"text":"██████", "color":"#300000"},"]"]

#endregion

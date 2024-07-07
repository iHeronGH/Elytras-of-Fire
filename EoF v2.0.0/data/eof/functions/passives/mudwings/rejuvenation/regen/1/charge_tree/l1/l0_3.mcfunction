#> eof:passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_3
#
# Handles scores 61-80 for Rejuvenation charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 2161..2520 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"███████", "color":"red"}, {"text":"███", "color":"#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 2521..2880 run title @s actionbar [{"text":"[", "color":"dark_gray"}, {"text":"████████", "color":"red"}, {"text":"██", "color":"#602020"}, "]"]

#endregion

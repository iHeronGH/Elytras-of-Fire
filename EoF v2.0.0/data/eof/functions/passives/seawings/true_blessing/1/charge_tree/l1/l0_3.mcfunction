#> eof:passives/seawings/true_blessing/1/charge_tree/l1/l0_3
#
# Handles scores 61-80 for True Blessing charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing=61..70}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"███████", "color":"dark_aqua"},{"text":"███", "color":"#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing=71..80}] run title @s actionbar [{"text":"[", "color":"dark_gray"},{"text":"████████", "color":"dark_aqua"},{"text":"██", "color":"#204464"},"]"]

#endregion

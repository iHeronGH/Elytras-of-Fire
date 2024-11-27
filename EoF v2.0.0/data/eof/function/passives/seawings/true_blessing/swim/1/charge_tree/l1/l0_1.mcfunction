#> eof:passives/seawings/true_blessing/swim/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for True Blessing charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if entity @s[scores={eof.passives.true_blessing.swim=21..30}] run title @s actionbar [{"text": "[", "color": "dark_gray"},{"text": "███", "color": "dark_aqua"},{"text": "███████", "color": "#204464"},"]"]
execute if entity @s[scores={eof.passives.true_blessing.swim=31..40}] run title @s actionbar [{"text": "[", "color": "dark_gray"},{"text": "████", "color": "dark_aqua"},{"text": "██████", "color": "#204464"},"]"]

#endregion

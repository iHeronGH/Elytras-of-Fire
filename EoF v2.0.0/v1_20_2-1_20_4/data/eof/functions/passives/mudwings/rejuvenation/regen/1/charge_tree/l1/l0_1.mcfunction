#> eof:passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_1
#
# Handles scores 21-40 for Rejuvenation charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/charge_tree/l1/l0_1.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.rejuvenation matches 721..1080 run title @s actionbar [{"text": "[", "color": "dark_gray"}, {"text": "███", "color": "red"}, {"text": "███████", "color": "#602020"}, "]"]
execute if score @s eof.passives.rejuvenation matches 1081..1440 run title @s actionbar [{"text": "[", "color": "dark_gray"}, {"text": "████", "color": "red"}, {"text": "██████", "color": "#602020"}, "]"]
  
#endregion

#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3
#
# Handles scores 61-80 for Skyborn charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:l1/l0_3.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 0
execute if score @s eof.passives.skyborn.jump matches 61..70 run title @s actionbar [{"text": "[", "color": "dark_gray"},{"text": "███████", "color": "dark_red"},{"text": "███", "color": "#300000"},"]"]
execute if score @s eof.passives.skyborn.jump matches 71..80 run title @s actionbar [{"text": "[", "color": "dark_gray"},{"text": "████████", "color": "dark_red"},{"text": "██", "color": "#300000"},"]"]

#endregion

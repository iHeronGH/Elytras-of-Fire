#> eof:passives/skywings/skyborn/jump/1/charge_tree/l1
#
# Split charge actionbar message into separate functions.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:charge_tree/l1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:charge_tree/l1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:charge_tree/l1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/skywings/skyborn/jump/1/charge_tree/l1.mcfunction", "color": "aqua"}}}]

    # Charge tree layer 1
execute if score @s eof.passives.skyborn.jump matches 1..20 run function eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_0
execute if score @s eof.passives.skyborn.jump matches 21..40 run function eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_1
execute if score @s eof.passives.skyborn.jump matches 41..60 run function eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_2
execute if score @s eof.passives.skyborn.jump matches 61..80 run function eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_3
execute if score @s eof.passives.skyborn.jump matches 81..100 run function eof:passives/skywings/skyborn/jump/1/charge_tree/l1/l0_4

#endregion

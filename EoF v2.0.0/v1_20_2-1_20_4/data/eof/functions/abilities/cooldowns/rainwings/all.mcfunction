#> eof:abilities/cooldowns/rainwings/all
#
# Run cooldown functions for all RainWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/cooldowns/rainwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/all.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/cooldowns/rainwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/cooldowns/rainwings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/rainwings, predicate=eof:abilities/cooldowns/rainwings/venom_shot] run function eof:abilities/cooldowns/rainwings/venom_shot
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/rainwings, predicate=eof:abilities/cooldowns/rainwings/overgrowth] run function eof:abilities/cooldowns/rainwings/overgrowth
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/rainwings, predicate=eof:abilities/cooldowns/rainwings/soul_sap] run function eof:abilities/cooldowns/rainwings/soul_sap

#endregion

#> eof:passives/mudwings/rejuvenation/amphib/1/deactivate
#
# Remove effects based on the MudWing passive ability Rejuvenation.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/passives/mudwings/rejuvenation/amphib/1/deactivate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/passives/mudwings/rejuvenation/amphib/1/deactivate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/passives/mudwings/rejuvenation/amphib/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Clear effects
effect clear @a[tag=eof.passives.rejuvenation.amphib.active, predicate=!eof:passives/rejuvenation/amphib/1] water_breathing

    # Resolve tags
tag @a[predicate=eof:tribes/mudwings, predicate=!eof:passives/rejuvenation/amphib/1] remove eof.passives.rejuvenation.amphib.active

#endregion

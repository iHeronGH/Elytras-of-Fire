#> eof:passives/skywings/skyborn/regen/1/cooldown
#
# Loops the cooldown for the passive ability Skyborn.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players add @a[tag=eof.passives.skyborn.regen] eof.passives.skyborn.regen 1

    # Check loop criteria
        ## On fail
execute as @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=..0}] run function eof:passives/skywings/skyborn/regen/1/deactivate

        ## On Success
execute if entity @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=0..800}] run schedule function eof:passives/skywings/skyborn/regen/1/cooldown 1t

#endregion

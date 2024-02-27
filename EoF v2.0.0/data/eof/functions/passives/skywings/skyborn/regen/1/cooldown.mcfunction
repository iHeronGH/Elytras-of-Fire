#> eof:passives/skywings/skyborn/regen/1/cooldown
#
# Loops the cooldown for the passive ability Skyborn.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players add @a[tag=eof.passives.skyborn.regen] eof.passives.skyborn.regen 1

    # Check loop criteria
        ## On fail
execute as @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=..0}] run function eof:passives/skywings/skyborn/regen/1/deactivate

        ## On Success
execute if entity @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=0..800}] run schedule function eof:passives/skywings/skyborn/regen/1/cooldown 1t

#endregion

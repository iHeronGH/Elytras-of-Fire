#> eof:passives/skywings/skyborn/jump/1/cooldown
#
# Loops the cooldown for the passive ability skyborn.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/jump/1/cooldown.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/jump/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Decrement score
scoreboard players remove @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..}] eof.passives.skyborn.jump 1

    # Reset
execute if entity @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=0}] as @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=0}] run function eof:passives/skywings/skyborn/jump/1/deactivate

    # Loop
execute if entity @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..}] run schedule function eof:passives/skywings/skyborn/jump/1/cooldown 10t

#endregion

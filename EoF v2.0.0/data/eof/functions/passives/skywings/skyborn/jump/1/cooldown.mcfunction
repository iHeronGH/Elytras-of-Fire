#> eof:passives/skywings/skyborn/jump/1/cooldown
#
# Loops the cooldown for the passive ability skyborn.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/jump/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Decrement score
scoreboard players remove @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..}] eof.passives.skyborn.jump 1

    # Reset
execute if entity @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=0}] as @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=0}] run function eof:passives/skywings/skyborn/jump/1/deactivate

    # Loop
execute if entity @a[tag=eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..}] run schedule function eof:passives/skywings/skyborn/jump/1/cooldown 10t

#endregion

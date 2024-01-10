#> eof:passives/skywings/skyborn/regen/1/cooldown
#
# Loops the cooldown for the passive ability Skyborn.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/skywings/skyborn/regen/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players add @a[tag=eof.passives.skyborn.regen] eof.passives.skyborn.regen 1

    # Check loop criteria
        ## On fail
execute as @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=..0}] run function eof:passives/skywings/skyborn/regen/1/deactivate

        ## On Success
execute if entity @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=0..800}] run schedule function eof:passives/skywings/skyborn/regen/1/cooldown 1t

#endregion

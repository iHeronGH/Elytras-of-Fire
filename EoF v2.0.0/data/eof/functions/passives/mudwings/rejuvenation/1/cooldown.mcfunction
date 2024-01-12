#> eof:passives/mudwings/rejuvenation/1/cooldown
#
# Loops the cooldown for the MudWing passive ability Rejuvenation.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/cooldown.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Decrement score
scoreboard players remove @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] eof.passives.rejuvenation 1

    # Reset
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] as @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] run function eof:passives/mudwings/rejuvenation/1/deactivate

    # Loop
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] run schedule function eof:passives/mudwings/rejuvenation/1/cooldown 1t

#endregion

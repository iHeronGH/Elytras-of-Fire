#> eof:passives/mudwings/rejuvenation/1/cooldown
#
# Loops the cooldown for the MudWing passive ability Rejuvenation.

#region
    # Decrement score
scoreboard players remove @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] eof.passives.rejuvenation 1

    # Reset
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] as @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] run function eof:passives/mudwings/rejuvenation/1/deactivate

    # Loop
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] run schedule function eof:passives/mudwings/rejuvenation/1/cooldown 1t

#endregion

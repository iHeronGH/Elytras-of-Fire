#> eof:effects/mudwings/rejuvenation/1/cooldown
#
# Loops the cooldown for the passive ability Rejuvenation.

#region
	# Decrement Score
scoreboard players remove @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] eof.passives.rejuvenation 1

	# Reset
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] as @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=0}] run function eof:effects/mudwings/rejuvenation/1/deactivate

	# Loop
execute if entity @a[tag=eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..}] run schedule function eof:effects/mudwings/rejuvenation/1/cooldown 36t

#endregion

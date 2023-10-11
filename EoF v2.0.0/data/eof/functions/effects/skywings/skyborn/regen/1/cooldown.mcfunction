#> eof:effects/skywings/skyborn/regen/1/cooldown
#
# Loops the cooldown for the passive ability Skyborn.

#region
	# Increment scores
scoreboard players add @a[tag=eof.passives.skyborn.regen] eof.passives.skyborn.regen 1

	# Check loop criteria
		## On Fail
execute as @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=..0}] run function eof:effects/skywings/skyborn/regen/1/deactivate

		## On Success
execute if entity @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=0..800}] run schedule function eof:effects/skywings/skyborn/regen/1/cooldown 1t

#endregion

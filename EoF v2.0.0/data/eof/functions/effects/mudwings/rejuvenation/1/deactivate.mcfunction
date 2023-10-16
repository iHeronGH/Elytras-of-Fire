#> eof:effects/mudwings/rejuvenation/1/deactivate
#
# Deactivate Rejuvenation due to either a failed charge or successful cooldown.

#region
	# Announce Deactivation
execute if entity @s[tag=!eof.passives.rejuvenation.active] run title @s actionbar {"text":"Rejuvenation charge failed!", "color":"red"}
execute if entity @s[tag=eof.passives.rejuvenation.active] run title @s actionbar {"text":"Rejuvenation charge ready!", "color":"red"}

	# Remove Tags
tag @s remove eof.passives.rejuvenation.init
tag @s remove eof.passives.rejuvenation.active

	# Reset Score
scoreboard players set @s eof.passives.rejuvenation 0

#endregion

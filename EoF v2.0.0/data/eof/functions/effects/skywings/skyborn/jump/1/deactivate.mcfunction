#> eof:effects/skywings/skyborn/jump/1/deactivate
#
#

#region
	# Announce Deactivation
execute if entity @s[tag=!eof.passives.skyborn.active] run title @s actionbar {"text":"Skyborn charge failed!", "color":"dark_red"}
execute if entity @s[tag=eof.passives.skyborn.active] run title @s actionbar {"text":"Skyborn charge ready!", "color":"dark_red"}

	# Remove Tags
tag @s remove eof.passives.skyborn.init
tag @s remove eof.passives.skyborn.active

	# Reset Score
scoreboard players set @s eof.passives.skyborn.jump 0

#endregion

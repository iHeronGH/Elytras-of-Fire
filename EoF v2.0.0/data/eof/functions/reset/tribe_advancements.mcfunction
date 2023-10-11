#> eof:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
	# Remove other tribe advancements
execute if entity @s[predicate=!eof:tribes/none] run advancement revoke @s until eof:none
execute if entity @s[predicate=!eof:tribes/icewings] run advancement revoke @s only eof:icewings
execute if entity @s[predicate=!eof:tribes/mudwings] run advancement revoke @s only eof:mudwings
execute if entity @s[predicate=!eof:tribes/nightwings] run advancement revoke @s only eof:nightwings
execute if entity @s[predicate=!eof:tribes/rainwings] run advancement revoke @s only eof:rainwings
execute if entity @s[predicate=!eof:tribes/sandwings] run advancement revoke @s only eof:sandwings
execute if entity @s[predicate=!eof:tribes/seawings] run advancement revoke @s only eof:seawings
execute if entity @s[predicate=!eof:tribes/skywings] run advancement revoke @s only eof:skywings

#endregion

#> eof:effects/main
#
# Applies effects to players with their effects toggled on.

#region
	# Clear other advancements
function #eoflib:reset/tribe_advancements

	# Clear other cooldowns
function #eoflib:reset/cooldowns

	# Determine effects based on tribe
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/icewings] run function eof:effects/icewings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/mudwings] run function eof:effects/mudwings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/nightwings] run function eof:effects/nightwings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/rainwings] run function eof:effects/rainwings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/sandwings] run function eof:effects/sandwings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/seawings] run function eof:effects/seawings/base
execute if entity @s[tag=eoflib.atts, predicate=eof:tribes/skywings] run function eof:effects/skywings/base

#endregion

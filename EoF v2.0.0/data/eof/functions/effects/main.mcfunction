#> eof:effects/main
#
# Applies effects to players with their effects toggled on.

#region
	# Clear other advancements
function #eoflib:reset/tribe_advancements

	# Determine effects based on tribe
execute if entity @s[predicate=eof:tribes/icewings, tag=eoflib.atts] run function eof:effects/icewings/base
execute if entity @s[predicate=eof:tribes/mudwings, tag=eoflib.atts] run function eof:effects/mudwings/base
execute if entity @s[predicate=eof:tribes/nightwings, tag=eoflib.atts] run function eof:effects/nightwings/base
execute if entity @s[predicate=eof:tribes/rainwings, tag=eoflib.atts] run function eof:effects/rainwings/base
execute if entity @s[predicate=eof:tribes/sandwings, tag=eoflib.atts] run function eof:effects/sandwings/base
execute if entity @s[predicate=eof:tribes/seawings, tag=eoflib.atts] run function eof:effects/seawings/base
execute if entity @s[predicate=eof:tribes/skywings, tag=eoflib.atts] run function eof:effects/skywings/base

#endregion

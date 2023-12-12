#> eof:abilities/return/nightwings/all
#
# Grant the player all NightWing abilities.

#region
	# Grant NightWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/nightwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/nightwings/shade_shackle
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/nightwings/premonition

#endregion

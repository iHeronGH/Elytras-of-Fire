#> eof:abilities/return/icewings/all
#
# Grant the player all IceWing abilities.

#region
	# Grant IceWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/icewings/frost_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/icewings/serrated_strike
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/icewings/icicle_incision

#endregion

#> eof:abilities/return/sandwings/all
#
# Grant the player all SandWing abilities.

#region
	# Grant SandWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/sandwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/sandwings/desert_storm
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/sandwings/toxin_slash

#endregion

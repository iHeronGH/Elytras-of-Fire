#> eof:abilities/seawings/all
#
# Grant the player all SeaWing abilities.

#region
	# Grant SeaWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/seawings/tidal_wave
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/seawings/oceans_blessing
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/seawings/tail_flail

#endregion

#> eof:abilities/return/icewings/all
#
# Grant the player all IceWing abilities.

#region
    # Grant IceWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/icewings/frost_breath
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/icewings/serrated_strike
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/icewings/icicle_incision

#endregion

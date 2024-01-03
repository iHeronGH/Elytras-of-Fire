#> eof:abilities/return/sandwings/all
#
# Grant the player all SandWing abilities.

#region
    # Grant SandWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/sandwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/sandwings/desert_storm
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/sandwings/toxin_slash

#endregion

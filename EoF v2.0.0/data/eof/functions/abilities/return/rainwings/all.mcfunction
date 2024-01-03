#> eof:abilities/return/rainwings/all
#
# Grant the player all RainWing abilities.

#region
    # Grant RainWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/rainwings/venom_shot
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/rainwings/overgrowth
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/rainwings/soul_sap

#endregion

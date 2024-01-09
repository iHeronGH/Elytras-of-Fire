#> eof:abilities/return/rainwings/all
#
# Grant the player all RainWing abilities.

#region
    # Grant RainWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/rainwings/venom_shot
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/rainwings/overgrowth
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/rainwings/soul_sap

#endregion

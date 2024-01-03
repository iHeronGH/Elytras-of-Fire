#> eof:abilities/return/mudwings/all
#
# Grant the player all MudWing abilities.

#region
    # Grant MudWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/mudwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/mudwings/terrashock
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/mudwings/mud_swipe

#endregion

#> eof:abilities/return/nightwings/all
#
# Grant the player all NightWing abilities.

#region
    # Grant NightWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/nightwings/flame_breath
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/nightwings/shade_shackle
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/nightwings/premonition

#endregion

#> eof:abilities/return/seawings/all
#
# Grant the player all SeaWing abilities.

#region
    # Grant SeaWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/seawings/tidal_wave
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/seawings/oceans_blessing
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] run function eof:abilities/return/seawings/tail_flail

#endregion

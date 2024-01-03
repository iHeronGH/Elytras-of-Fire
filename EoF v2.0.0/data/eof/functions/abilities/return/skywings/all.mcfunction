#> eof:abilities/return/skywings/all
#
# Grant the player all SkyWing abilities.

#region
    # Grant SkyWing abilities
execute if entity @s[predicate=eoflib:inventory/empty/slot_6] run function eof:abilities/return/skywings/flame_breath
execute if entity @s[predicate=eoflib:inventory/empty/slot_7] run function eof:abilities/return/skywings/sky_surge
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] unless entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/spark
execute if entity @s[predicate=eoflib:inventory/empty/slot_8] if entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/smite

#endregion

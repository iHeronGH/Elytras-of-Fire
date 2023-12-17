#> eof:abilities/return/skywings/all
#
# Grant the player all SkyWing abilities.

#region
    # Grant SkyWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/skywings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/skywings/sky_surge
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] unless entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/spark
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] if entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/smite

#endregion

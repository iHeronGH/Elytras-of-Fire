#> eof:abilities/block_effects/frost_breath
#
# Activate Frost Breath effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/icewings/frost_breath.mcf"]

    # Enemy effects
execute facing ^ ^ ^-1 rotated ~ 80 run particle snowflake ~ ~ ~ ^-300000 ^ ^1000000 0.0000001 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^-80000 ^ ^1000000 0.00000015 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^80000 ^ ^1000000 0.00000015 0
execute facing ^ ^ ^-1 rotated ~ 80 run particle snowflake ~ ~ ~ ^300000 ^ ^1000000 0.0000001 0

#endregion

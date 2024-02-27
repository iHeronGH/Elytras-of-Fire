#> eof:abilities/block_effects/frost_breath
#
# Activate Frost Breath effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/block_effects/frost_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:block_effects/frost_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/block_effects/frost_breath.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute facing ^ ^ ^-1 rotated ~ 80 run particle snowflake ~ ~ ~ ^-300000 ^ ^1000000 0.0000001 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^-80000 ^ ^1000000 0.00000015 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^ ^ ^1000000 0.0000002 0
execute facing ^ ^ ^-1 rotated ~ 70 run particle snowflake ~ ~ ~ ^80000 ^ ^1000000 0.00000015 0
execute facing ^ ^ ^-1 rotated ~ 80 run particle snowflake ~ ~ ~ ^300000 ^ ^1000000 0.0000001 0

#endregion

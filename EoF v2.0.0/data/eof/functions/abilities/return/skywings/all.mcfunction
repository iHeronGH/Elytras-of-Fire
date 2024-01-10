#> eof:abilities/return/skywings/all
#
# Grant the player all SkyWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/skywings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/skywings/all.mcfunction", "color": "aqua"}}}]

    # Grant SkyWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/skywings/flame_breath
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/skywings/sky_surge
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] unless entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/spark
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] if entity @s[tag=eof.skywings.smite_mode] run function eof:abilities/return/skywings/spark_punch/smite

#endregion

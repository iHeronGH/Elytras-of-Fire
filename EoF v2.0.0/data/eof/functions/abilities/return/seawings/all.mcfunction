#> eof:abilities/return/seawings/all
#
# Grant the player all SeaWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/seawings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/seawings/all.mcfunction", "color": "aqua"}}}]

    # Grant SeaWing abilities
execute if entity @s[predicate=eoflib:inventory/slot_6_empty] run function eof:abilities/return/seawings/tidal_wave
execute if entity @s[predicate=eoflib:inventory/slot_7_empty] run function eof:abilities/return/seawings/oceans_blessing
execute if entity @s[predicate=eoflib:inventory/slot_8_empty] run function eof:abilities/return/seawings/tail_flail

#endregion

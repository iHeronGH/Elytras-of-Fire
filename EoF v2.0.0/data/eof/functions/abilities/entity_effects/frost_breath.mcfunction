#> eof:abilities/entity_effects/frost_breath
#
# Activate Frost Breath effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/entity_effects/frost_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/frost_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/entity_effects/frost_breath.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute if entity @s[type=!#eoflib:weak_to_frost] run damage @s 4 generic
execute if entity @s[type=#eoflib:weak_to_frost] run damage @s 6 generic
effect give @s mining_fatigue 5 1 true
effect give @s slowness 5 1 true

#endregion

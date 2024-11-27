#> eof:abilities/entity_effects/frost_breath
#
# Activate Frost Breath effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/entity_effects/frost_breath.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/entity_effects/frost_breath.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/frost_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/entity_effects/frost_breath.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute if entity @s[type=!#eoflib:weak_to_frost] run damage @s 4 generic
execute if entity @s[type=#eoflib:weak_to_frost] run damage @s 6 generic
tag @s[predicate=!eof:tribes/icewings] add eof.effects.frostbite.1
effect give @s mining_fatigue 5 1 true
effect give @s slowness 5 1 true

#endregion

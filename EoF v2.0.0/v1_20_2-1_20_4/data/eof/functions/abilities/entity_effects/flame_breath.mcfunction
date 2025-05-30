#> eof:abilities/entity_effects/flame_breath
#
# Activate Flame Breath effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/flame_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/entity_effects/flame_breath.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/flame_breath.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/entity_effects/flame_breath.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/flame_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/entity_effects/flame_breath.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute at @s anchored eyes positioned ^ ^ ^ facing entity @s eyes run summon small_fireball ~ ~1 ~ {Motion: [0.0d, -1.0d, 0.0d], Item: {id: "minecraft:stone_button", count: 1b}, HasVisualFire: 0b}
execute if entity @s[type=!#eoflib:weak_to_fire, nbt={active_effects: [{id: "minecraft:fire_resistance"}]}] run damage @s 0.5 generic
execute if entity @s[type=#eoflib:weak_to_fire, nbt={active_effects: [{id: "minecraft:fire_resistance"}]}] run damage @s 1.5 generic

#endregion

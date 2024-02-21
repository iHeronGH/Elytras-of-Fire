#> eof:abilities/entity_effects/flame_breath
#
# Activate Flame Breath effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/flame_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/entity_effects/flame_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:entity_effects/flame_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/entity_effects/flame_breath.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute at @s anchored eyes positioned ^ ^ ^ facing entity @s eyes run summon small_fireball ~ ~1 ~ {Motion: [0.0, -1.0, 0.0], Item: {id: "minecraft:stone_button", Count: 1b}, HasVisualFire: 0b}
execute if entity @s[type=!#eoflib:weak_to_fire, nbt={active_effects: [{id: "minecraft:fire_resistance"}]}] run damage @s 0.5 generic
execute if entity @s[type=#eoflib:weak_to_fire, nbt={active_effects: [{id: "minecraft:fire_resistance"}]}] run damage @s 1.5 generic

#endregion

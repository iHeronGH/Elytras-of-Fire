#> eof:abilities/entity_effects/flame_breath
#
# Activate Flame Breath effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:abilities/entity_effects/flame_breath.mcf", "color": "gold"}]

    # Enemy effects
execute at @s anchored eyes positioned ^ ^ ^ facing entity @s eyes run summon small_fireball ~ ~1 ~ {Motion: [0.0, -1.0, 0.0], Item: {id: "minecraft:stone_button", Count: 1b}, HasVisualFire: 0b}
execute unless entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run tag @s remove eof.effects.frostbite.1
execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run damage @s 0.5 generic

#endregion

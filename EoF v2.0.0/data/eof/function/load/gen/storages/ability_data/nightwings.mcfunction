#> eof:load/gen/storages/ability_data/nightwings
#
# Generate NightWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].NightWings set value { \
    primary: [{}], \
    secondary: [{}], \
    tertiary: [{}] \
}

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].NightWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101000, \
    "model_path": "minecraft:eof/nightwing/primary", \
    "ability_data": { \
        "name": 'flame_breath', \
        "tribe": 'nightwings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Flame Breath", "color": "red", "italic": false}', \
            "tribe": '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
            "archetype": '{"text": "Primary (Straight, 11)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "• Bursts a stream of fire,", "color": "red", "italic": false}', \
                '{"text": "igniting enemies on contact", "color": "red", "italic": false}', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 11, \
        "particle": 'flame', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'burn', \
            "influences": '#eof:flora' \
        } \
    } \
}

        ## Shade Shackle
data modify storage eoflib:config eof.Abilities[].NightWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101001, \
    "model_path": "minecraft:eof/nightwing/secondary", \
    "ability_data": { \
        "name": 'shade_shackle', \
        "tribe": 'nightwings', \
        "archetype": 'secondary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Shade Shackle", "color": "dark_purple", "italic": false}', \
            "tribe": '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '[{"text": "Hold + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Blindness", "color": "red", "italic": false}]', \
                '{"text": "• Slowness 3 up to 6m away", "color": "yellow", "italic": false}', \
                '{"text": "• Slowness 2 up to 10m away", "color": "yellow", "italic": false}', \
            ] \
        } \
    } \
}

        ## Premonition
data modify storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101010, \
    "model_path": "minecraft:eof/nightwing/tertiary", \
    "ability_data": { \
        "name": 'premonition', \
        "tribe": 'nightwings', \
        "archetype": 'tertiary', \
        "cooldown": 20, \
        "duration": 10, \
        "format": { \
            "name": '{"text": "Premonition", "color": "dark_gray", "italic": false}', \
            "tribe": '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "20s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "• Creates an impassable", "color": "green", "italic": false}', \
                '{"text": "barrier that blocks", "color": "green", "italic": false}', \
                '[{"text": "incoming projectiles", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion

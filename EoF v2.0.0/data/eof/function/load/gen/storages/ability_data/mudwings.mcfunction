#> eof:load/gen/storages/ability_data/mudwings
#
# Generate MudWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].MudWings set value { \
    primary: [{}], \
    secondary: [{}], \
    tertiary: [{}] \
}

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100100, \
    "model_path": "minecraft:eof/mudwing/primary", \
    "ability_data": { \
        "name": 'flame_breath', \
        "tribe": 'mudwings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Flame Breath", "color": "red", "italic": false}', \
            "tribe": '{"text": "MudWing", "color": "red", "italic": false}', \
            "archetype": '{"text": "Primary", "color": "gray", "italic": false}', \
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

        ## Terrashock
data modify storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100101, \
    "model_path": "minecraft:eof/mudwing/secondary", \
    "ability_data": { \
        "name": 'terrashock', \
        "tribe": 'mudwings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Terrashock", "color": "gold", "italic": false}', \
            "tribe": '{"text": "MudWing", "color": "red", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Absorption 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

        ## Mud Swipe
data modify storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100110, \
    "model_path": "minecraft:eof/mudwing/tertiary", \
    "ability_data": { \
        "name": 'mud_swipe', \
        "tribe": 'mudwings', \
        "archetype": 'tertiary', \
        "cooldown": 12, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Mud Swipe", "color": "yellow", "italic": false}', \
            "tribe": '{"text": "MudWing", "color": "red", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "12s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion

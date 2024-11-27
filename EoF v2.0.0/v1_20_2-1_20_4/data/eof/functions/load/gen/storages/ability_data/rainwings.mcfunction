#> eof:load/gen/storages/ability_data/rainwings
#
# Generate RainWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].RainWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Venom Shot
data modify storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101100, \
    "ability_data": { \
        "name": 'venom_shot', \
        "tribe": 'rainwings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Venom Shot", "color": "white", "italic": false}', \
            "tribe": '{"text": "RainWing", "color": "green", "italic": false}', \
            "archetype": '{"text": "Primary", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Wither 2", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 14, \
        "particle": 'dust 0 0 0 1.25', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'destroy', \
            "influences": '#eof:flora' \
        } \
    } \
}

        ## Overgrowth
data modify storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101101, \
    "ability_data": { \
        "name": 'overgrowth', \
        "tribe": 'rainwings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Overgrowth", "color": "dark_green", "italic": false}', \
            "tribe": '{"text": "RainWing", "color": "green", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Slowness 2", "color": "yellow", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Resistance 2", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

        ## Soul Sap
data modify storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 101110, \
    "ability_data": { \
        "name": 'soul_sap', \
        "tribe": 'rainwings', \
        "archetype": 'tertiary', \
        "cooldown": 12, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Soul Sap", "color": "green", "italic": false}', \
            "tribe": '{"text": "RainWing", "color": "green", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "12s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Regeneration 3", "color": "green", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion

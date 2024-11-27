#> eof:load/gen/storages/ability_data/skywings
#
# Generate SkyWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SkyWings set value {primary: [{}], secondary: [{}], tertiary: [{}, {}]}

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].SkyWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 111000, \
    "ability_data": { \
        "name": 'flame_breath', \
        "tribe": 'skywings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Flame Breath", "color": "red", "italic": false}', \
            "tribe": '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
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

        ## Sky Surge
data modify storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 111001, \
    "ability_data": { \
        "name": 'sky_surge', \
        "tribe": 'skywings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Sky Surge", "color": "dark_red", "italic": false}', \
            "tribe": '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

        ## Spark Punch
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 111010, \
    "ability_data": { \
        "name": 'spark_punch', \
        "mode": 'spark', \
        "tribe": 'skywings', \
        "archetype": 'tertiary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Spark Punch", "color": "yellow", "italic": false}', \
            "tribe": '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Spark Mode:", "color": "yellow", "italic": false}', \
                '{"text": "Ignites enemies", "color": "red", "italic": false}', \
                '{"text": "Lowered attack speed", "color": "green", "italic": false}', \
            ] \
        } \
    } \
}
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[1].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 111010, \
    "ability_data": { \
        "name": 'spark_punch', \
        "mode": 'smite', \
        "tribe": 'skywings', \
        "archetype": 'tertiary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Spark Punch", "color": "yellow", "italic": false}', \
            "tribe": '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "    Smite Mode:", "color": "yellow", "italic": false}', \
                '{"text": "Heightened attack speed", "color": "green", "italic": false}', \
            ] \
        } \
    } \
}

#endregion

#> eof:load/gen/storages/ability_data/icewings
#
# Generate IceWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].IceWings set value { \
    primary: [{}], \
    secondary: [{}], \
    tertiary: [{}] \
}

    # Generate ability data
        ## Frost Breath
data modify storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data set value { \
    "dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100000, \
    "ability_data": { \
        "name": 'frost_breath', \
        "tribe": 'icewings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Frost Breath", "color": "aqua", "italic": false}', \
            "tribe": '{"text": "IceWing", "color": "aqua", "italic": false}', \
            "archetype": '{"text": "Primary", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Slowness 2", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Mining Fatigue 2", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
                '{"text": "• Frostbite", "color": "red", "italic": false}', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 13, \
        "particle": 'dust{"color": [1.0, 1.0, 1.0], scale: 1}', \
        "blocks": { \
            "passthrough": '#eoflib:passable/general', \
            "action": 'freeze', \
            "influences": '#eof:water' \
        } \
    } \
}

        ## Serrated Strike
data modify storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100001, \
    "ability_data": { \
        "name": 'serrated_strike', \
        "tribe": 'icewings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Serrated Strike", "color": "gray", "italic": false}', \
            "tribe": '{"text": "IceWing", "color": "aqua", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Speed 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Speed 2 on ice", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Speed 3 on snow", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '{"text": "• Frostbite", "color": "red", "italic": false}', \
            ] \
        } \
    } \
}

        ## Icicle Incision
data modify storage eoflib:config eof.Abilities[].IceWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 100010, \
    "ability_data": { \
        "name": 'icicle_incision', \
        "tribe": 'icewings', \
        "archetype": 'tertiary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Icicle Incision", "color": "white", "italic": false}', \
            "tribe": '{"text": "IceWing", "color": "aqua", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "• Knockback Resistance", "color": "green", "italic": false}', \
                '{"text": "while held", "color": "gray", "italic": true}', \
                '[{"text": "• Poison 3", "color": "red", "italic": false}, {"text": " (1s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Wither 2", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
                '{"text": "on Frostbitten foes", "color": "gray", "italic": true}', \
                '{"text": "• Removes Frostbite", "color": "red", "italic": false}', \
            ] \
        } \
    } \
}

#endregion

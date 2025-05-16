#> eof:load/gen/storages/ability_data/seawings
#
# Generate SeaWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SeaWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Tidal Wave
data modify storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110100, \
    "model_path": "minecraft:eof/seawing/primary", \
    "ability_data": { \
        "name": 'tidal_wave', \
        "tribe": 'seawings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Tidal Wave", "color": "blue", "italic": false}', \
            "tribe": '{"text": "SeaWing", "color": "blue", "italic": false}', \
            "archetype": '{"text": "Primary (Straight, 10)", "color": "gray", "italic": false}', \
            "activation": '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
            "cooldown": '{"text": "10s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Mining Fatigue 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Poison 2", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
                '{"text": "with Torrent 1", "color": "gray", "italic": true}', \
                '[{"text": "• Poison 4", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
                '{"text": "with Torrent 2", "color": "gray", "italic": true}', \
            ] \
        } \
    }, \
    "raycast_data": { \
        "arc_intensity": 0, \
        "range": 10, \
        "particle": 'fishing', \
        "blocks": { \
            "passthrough": '#eoflib:passable/water', \
            "action": 'extinguish', \
            "influences": '#eoflib:hot' \
        } \
    } \
}

        ## Ocean's Blessing
data modify storage eoflib:config eof.Abilities[].SeaWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110101, \
    "model_path": "minecraft:eof/seawing/secondary", \
    "ability_data": { \
        "name": 'oceans_blessing', \
        "tribe": 'seawings', \
        "archetype": 'secondary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Ocean\'s Blessing", "color": "dark_aqua", "italic": false}', \
            "tribe": '{"text": "SeaWing", "color": "blue", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Hold in water", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '{"text": "• Speed 2", "color": "green", "italic": false}', \
                '{"text": "• Speed 4", "color": "green", "italic": false}', \
                '{"text": "while swimming", "color": "gray", "italic": true}', \
                '[{"text": "• Regeneration 1", "color": "green", "italic": false}, {"text": " (4s every 15s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Regeneration 2", "color": "green", "italic": false}, {"text": " (5s every 15s)", "color": "gray", "italic": false}]', \
                '{"text": "with True Blessing", "color": "gray", "italic": true}', \
                '{"text": "• Dolphin\'s Grace", "color": "green", "italic": false}', \
                '{"text": "with True Blessing", "color": "gray", "italic": true}', \
            ] \
        } \
    } \
}

        ## Tail Flail
data modify storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110110, \
    "model_path": "minecraft:eof/seawing/tertiary", \
    "ability_data": { \
        "name": 'tail_flail', \
        "tribe": 'seawings', \
        "archetype": 'tertiary', \
        "cooldown": 20, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Tail Flail", "color": "aqua", "italic": false}', \
            "tribe": '{"text": "SeaWing", "color": "blue", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "20s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Blindness", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
                '{"text": "• Increased Knockback", "color": "green", "italic": false}', \
            ] \
        } \
    } \
}

#endregion

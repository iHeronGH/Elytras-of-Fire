#> eof:load/gen/storages/ability_data/sandwings
#
# Generate SandWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SandWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].SandWings.primary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110000, \
    "model_path": "minecraft:eof/sandwing/primary", \
    "ability_data": { \
        "name": 'flame_breath', \
        "tribe": 'sandwings', \
        "archetype": 'primary', \
        "cooldown": 10, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Flame Breath", "color": "red", "italic": false}', \
            "tribe": '{"text": "SandWing", "color": "yellow", "italic": false}', \
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

        ## Desert Storm
data modify storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110001, \
    "model_path": "minecraft:eof/sandwing/secondary", \
    "ability_data": { \
        "name": 'desert_storm', \
        "tribe": 'sandwings', \
        "archetype": 'secondary', \
        "cooldown": 24, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Desert Storm", "color": "yellow", "italic": false}', \
            "tribe": '{"text": "SandWing", "color": "yellow", "italic": false}', \
            "archetype": '{"text": "Secondary", "color": "gray", "italic": false}', \
            "activation": '{"keybind": "key.use", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "24s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Blindness", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Strength 2", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
                '[{"text": "• Speed 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

        ## Toxin Slash
data modify storage eoflib:config eof.Abilities[].SandWings.tertiary[0].eof_data set value { \
	"dlc": 'eof', \
    "version": '2_0_0', \
    "model_id": 110010, \
    "model_path": "minecraft:eof/sandwing/tertiary", \
    "ability_data": { \
        "name": 'toxin_slash', \
        "tribe": 'sandwings', \
        "archetype": 'tertiary', \
        "cooldown": 0, \
        "duration": 0, \
        "format": { \
            "name": '{"text": "Toxin Slash", "color": "green", "italic": false}', \
            "tribe": '{"text": "SandWing", "color": "yellow", "italic": false}', \
            "archetype": '{"text": "Tertiary", "color": "gray", "italic": false}', \
            "activation": '{"text": "Attack", "color": "gray", "italic": false}', \
            "cooldown": '{"text": "0s", "color": "gray", "italic": false}', \
            "effects": [ \
                '[{"text": "• Poison 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
            ] \
        } \
    } \
}

#endregion

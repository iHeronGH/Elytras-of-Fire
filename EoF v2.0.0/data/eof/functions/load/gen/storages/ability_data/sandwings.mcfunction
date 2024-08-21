#> eof:load/gen/storages/ability_data/sandwings
#
# Generate SandWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SandWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Flame Breath
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SandWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'sandwings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SandWings.primary[0].mc_data set value {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SandWing", "color": "yellow", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Bursts a stream of fire,", "color": "red", "italic": false}', \
    '{"text": "igniting enemies on contact", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 110000, Unbreakable: true, HideFlags: 4}

        ## Desert Storm
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'sandwings', name: 'desert_storm', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SandWings.secondary[0].mc_data set value {display: {Name: '{"text": "Desert Storm", "color": "yellow", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SandWing", "color": "yellow", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Blindness", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Strength 2", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Speed 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 110001, Unbreakable: true, HideFlags: 4}

        ## Toxin Slash
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SandWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'sandwings', name: 'toxin_slash', cooldown: 0, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SandWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Toxin Slash", "color": "green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SandWing", "color": "yellow", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Poison 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, CustomModelData: 110010, Unbreakable: true, HideFlags: 4}

#endregion

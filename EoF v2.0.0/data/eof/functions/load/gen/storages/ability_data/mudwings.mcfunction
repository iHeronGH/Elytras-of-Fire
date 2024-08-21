#> eof:load/gen/storages/ability_data/mudwings
#
# Generate MudWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/mudwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/mudwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].MudWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Flame Breath
            ### EOF data
data modify storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'mudwings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].MudWings.primary[0].mc_data set value {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "MudWing", "color": "red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Bursts a stream of fire,", "color": "red", "italic": false}', \
    '{"text": "igniting enemies on contact", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100100, Unbreakable: true, HideFlags: 4}

        ## Terrashock
            ### EOF data
data modify storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'mudwings', name: 'terrashock', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].MudWings.secondary[0].mc_data set value {display: {Name: '{"text": "Terrashock", "color": "gold", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "MudWing", "color": "red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Absorption 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100101, Unbreakable: true, HideFlags: 4}

        ## Mud Swipe
            ### EOF data
data modify storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'mudwings', name: 'mud_swipe', cooldown: 12, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].MudWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Mud Swipe", "color": "yellow", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "MudWing", "color": "red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (6s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "12s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100110, Unbreakable: true, HideFlags: 4}

#endregion

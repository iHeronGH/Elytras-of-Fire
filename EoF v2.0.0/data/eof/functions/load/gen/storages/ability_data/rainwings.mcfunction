#> eof:load/gen/storages/ability_data/rainwings
#
# Generate RainWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].RainWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Venom Shot
            ### EOF data
data modify storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'rainwings', name: 'venom_shot', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 14, particle: "dust 0 0 0 1.25", blocks: {passthrough: "#eoflib:passable/general", action: "destroy", influences: "#eof:flora"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].RainWings.primary[0].mc_data set value {display: {Name: '{"text": "Venom Shot", "color": "white", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "RainWing", "color": "green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Wither 2", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101100, Unbreakable: true, HideFlags: 4}

        ## Overgrowth
            ### EOF data
data modify storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'rainwings', name: 'overgrowth', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].RainWings.secondary[0].mc_data set value {display: {Name: '{"text": "Overgrowth", "color": "dark_green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "RainWing", "color": "green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Slowness 2", "color": "yellow", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Resistance 2", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101101, Unbreakable: true, HideFlags: 4}

        ## Soul Sap
            ### EOF data
data modify storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'rainwings', name: 'soul_sap', cooldown: 12, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].RainWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Soul Sap", "color": "green", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "RainWing", "color": "green", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Regeneration 3", "color": "green", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "12s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101110, Unbreakable: true, HideFlags: 4}

#endregion

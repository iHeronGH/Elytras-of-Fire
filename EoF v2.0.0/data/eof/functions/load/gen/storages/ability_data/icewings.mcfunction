#> eof:load/gen/storages/ability_data/icewings
#
# Generate IceWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/icewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/icewings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].IceWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Frost Breath
            ### EOF data
data modify storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'icewings', name: 'frost_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 13, particle: "dust 1 1 1 1", blocks: {passthrough: "#eoflib:passable/general", action: "freeze", influences: "#eof:water"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].IceWings.primary[0].mc_data set value {display: {Name: '{"text": "Frost Breath", "color": "aqua", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "IceWing", "color": "aqua", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Slowness 2", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Mining Fatigue 2", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (5s)", "color": "gray", "italic": false}]', \
    '{"text": "• Frostbite", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100000, Unbreakable: true, HideFlags: 4}

        ## Serrated Strike
            ### EOF data
data modify storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'icewings', name: 'serrated_strike', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].IceWings.secondary[0].mc_data set value {display: {Name: '{"text": "Serrated Strike", "color": "gray", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "IceWing", "color": "aqua", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Speed 1", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Speed 2 on ice", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Speed 3 on snow", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '{"text": "• Frostbite", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100001, Unbreakable: true, HideFlags: 4}

        ## Icicle Incision
            ### EOF data
data modify storage eoflib:config eof.Abilities[].IceWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'icewings', name: 'icicle_incision', cooldown: 0, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].IceWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Icicle Incision", "color": "white", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "IceWing", "color": "aqua", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Knockback Resistance", "color": "green", "italic": false}', \
    '{"text": "while held", "color": "gray", "italic": true}', \
    '[{"text": "• Poison 3", "color": "red", "italic": false}, {"text": " (1s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Wither 2", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
    '{"text": "on Frostbitten foes", "color": "gray", "italic": true}', \
    '{"text": "• Removes Frostbite", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, CustomModelData: 100010, Unbreakable: true, HideFlags: 4}

#endregion

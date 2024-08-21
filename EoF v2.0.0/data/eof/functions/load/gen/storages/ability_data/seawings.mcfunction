#> eof:load/gen/storages/ability_data/seawings
#
# Generate SeaWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/seawings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/seawings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SeaWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Tidal Wave
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'seawings', name: 'tidal_wave', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 10, particle: "fishing", blocks: {passthrough: "#eoflib:passable/water", action: "extinguish", influences: "#eoflib:hot"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SeaWings.primary[0].mc_data set value {display: {Name: '{"text": "Tidal Wave", "color": "blue", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SeaWing", "color": "blue", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Weakness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Mining Fatigue 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Slowness 1", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Poison 2", "color": "red", "italic": false}, {"text": " (2s)", "color": "gray", "italic": false}]', \
    '{"text": "with Torrent 1", "color": "gray", "italic": true}', \
    '[{"text": "• Poison 4", "color": "red", "italic": false}, {"text": " (3s)", "color": "gray", "italic": false}]', \
    '{"text": "with Torrent 2", "color": "gray", "italic": true}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 110100, Unbreakable: true, HideFlags: 4}

        ## Ocean's Blessing
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SeaWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'seawings', name: 'oceans_blessing', cooldown: 0, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SeaWings.secondary[0].mc_data set value {display: {Name: '{"text": "Ocean\'s Blessing", "color": "dark_aqua", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SeaWing", "color": "blue", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Hold in water", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Speed 2", "color": "green", "italic": false}', \
    '{"text": "• Speed 4", "color": "green", "italic": false}', \
    '{"text": "while swimming", "color": "gray", "italic": true}', \
    '[{"text": "• Regeneration 1", "color": "red", "italic": false}, {"text": " (4s every 15s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Regeneration 2", "color": "red", "italic": false}, {"text": " (5s every 15s)", "color": "gray", "italic": false}]', \
    '{"text": "with True Blessing", "color": "gray", "italic": true}', \
    '{"text": "• Dolphin\'s Grace", "color": "red", "italic": false}', \
    '{"text": "with True Blessing", "color": "gray", "italic": true}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, CustomModelData: 110101, Unbreakable: true, HideFlags: 4}

        ## Tail Flail
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'seawings', name: 'tail_flail', cooldown: 20, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Tail Flail", "color": "aqua", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SeaWing", "color": "blue", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Blindness", "color": "red", "italic": false}, {"text": " (4s)", "color": "gray", "italic": false}]', \
    '{"text": "• Increased Knockback", "color": "green"}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "20s", "color": "gray", "italic": false}' \
]}, Enchantments: [{id: "minecraft:knockback", lvl: 2s}], CustomModelData: 110110, Unbreakable: true, HideFlags: 4}

#endregion

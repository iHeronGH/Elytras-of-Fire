#> eof:load/gen/storages/ability_data/skywings
#
# Generate SkyWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/skywings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/skywings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].SkyWings set value {primary: [{}], secondary: [{}], tertiary: [{}, {}]}

    # Generate ability data
        ## Flame Breath
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SkyWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'skywings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SkyWings.primary[0].mc_data set value {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Bursts a stream of fire,", "color": "red", "italic": false}', \
    '{"text": "igniting enemies on contact", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 111000, Unbreakable: true, HideFlags: 4}

        ## Sky Surge
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'skywings', name: 'sky_surge', cooldown: 24, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SkyWings.secondary[0].mc_data set value {display: {Name: '{"text": "Sky Surge", "color": "dark_red", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"keybind": "key.use", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Strength 3", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '[{"text": "• Resistance 1", "color": "green", "italic": false}, {"text": " (8s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "24s", "color": "gray", "italic": false}' \
]}, CustomModelData: 111001, Unbreakable: true, HideFlags: 4}

        ## Spark Punch
            ### EOF data
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'skywings', name: 'spark_punch', mode: 'spark', cooldown: 0, duration: 0}}
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[1].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'skywings', name: 'spark_punch', mode: 'smite', cooldown: 0, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Spark Punch", "color": "yellow", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "    Spark Mode:", "color": "yellow", "italic": false}', \
    '{"text": "Ignites enemies", "color": "red", "italic": false}', \
    '{"text": "Lowered attack speed", "color": "green", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, Enchantments: [{id: "minecraft:fire_aspect", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -0.8d, Operation: 1, UUID: [I; 937145406, 2019445732, -1223356162, -1266583782], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 1.0d, Operation: 0, UUID: [I; -1081153244, 25903907, -1598831346, 2124352326], Slot: "mainhand"}], HideFlags: 7, CustomModelData: 111010, Unbreakable: true}
data modify storage eoflib:config eof.Abilities[].SkyWings.tertiary[1].mc_data set value {display: {Name: '{"text": "Spark Punch", "color": "yellow", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "SkyWing", "color": "dark_red", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "    Smite Mode:", "color": "yellow", "italic": false}', \
    '{"text": "Heightened attack speed", "color": "green", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: 0.6d, Operation: 1, UUID: [I; 1459382713, -88062980, -1871134482, 2095230054], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 0.5d, Operation: 0, UUID: [I; -1809545614, 38356629, -1164515149, 1045868424], Slot: "mainhand"}], HideFlags: 7, CustomModelData: 111010, Unbreakable: true}

#endregion

#> eof:load/gen/storages/ability_data/nightwings
#
# Generate NightWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]

    # Initialise ability array
data modify storage eoflib:config eof.Abilities[].NightWings set value {primary: [{}], secondary: [{}], tertiary: [{}]}

    # Generate ability data
        ## Flame Breath
            ### EOF data
data modify storage eoflib:config eof.Abilities[].NightWings.primary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'nightwings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].NightWings.primary[0].mc_data set value {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Primary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"keybind": "key.sneak", "color": "gray", "italic": false}, {"text": " + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Bursts a stream of fire,", "color": "red", "italic": false}', \
    '{"text": "igniting enemies on contact", "color": "red", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "10s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101000, Unbreakable: true, HideFlags: 4}

        ## Shade Shackle
            ### EOF data
data modify storage eoflib:config eof.Abilities[].NightWings.secondary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'nightwings', name: 'shade_shackle', cooldown: 0, duration: 0}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].NightWings.secondary[0].mc_data set value {display: {Name: '{"text": "Shade Shackle", "color": "dark_purple", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Secondary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '[{"text": "Hold + ", "color": "gray", "italic": false}, {"keybind": "key.use", "color": "gray", "italic": false}]', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '[{"text": "• Blindness", "color": "red", "italic": false}]', \
    '{"text": "• Slowness 3 up to 6m away", "color": "yellow", "italic": false}', \
    '{"text": "• Slowness 2 up to 10m away", "color": "yellow", "italic": false}', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "0s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101001, Unbreakable: true, HideFlags: 4}

        ## Premonition
            ### EOF data
data modify storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data set value {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'nightwings', name: 'premonition', cooldown: 20, duration: 10}}

            ### MC data
data modify storage eoflib:config eof.Abilities[].NightWings.tertiary[0].mc_data set value {display: {Name: '{"text": "Premonition", "color": "dark_gray", "italic": false}', Lore: [\
    '{"text": "- Tribe:", "color": "dark_gray", "italic": true}', \
    '{"text": "NightWing", "color": "dark_purple", "italic": false}', \
    '{"text": "- Archetype:", "color": "dark_gray", "italic": true}', \
    '{"text": "Tertiary", "color": "gray", "italic": false}', \
    '{"text": "- Activation:", "color": "dark_gray"}', \
    '{"text": "Attack", "color": "gray", "italic": false}', \
    '{"text": "- Effects:", "color": "dark_gray", "italic": true}', \
    '{"text": "• Generates an", "color": "green", "italic": false}', \
    '{"text": "impermeable barrier,", "color": "green", "italic": false}', \
    '[{"text": "blocking projectiles", "color": "green", "italic": false}, {"text": " (10s)", "color": "gray", "italic": false}]', \
    '{"text": "- Cooldown:", "color": "dark_gray", "italic": true}', \
    '{"text": "20s", "color": "gray", "italic": false}' \
]}, CustomModelData: 101010, Unbreakable: true, HideFlags: 4}

#endregion

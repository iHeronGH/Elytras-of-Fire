#> eof:load/gen/storages/ability_data/rainwings
#
# Generate RainWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/rainwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/rainwings.mcfunction", "color": "aqua"}}}]

    # Generate ability data
        ## Venom Shot
data modify storage eoflib:config eof.Abilities[].RainWings[].primary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'rainwings', name: 'venom_shot', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 14, particle: "dust 0 0 0 1.25", blocks: {passthrough: "#eoflib:passable/general", action: "destroy", influences: "#eof:flora"}}}, mc_data: {display: {Name: '{"text": "Venom Shot", "color": "white", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '{"text": "Creates a jet of", "color": "green"}', '{"text": "acidic venom that", "color": "green"}', '{"text": "withers foes", "color": "green"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 101100, Unbreakable: true, HideFlags: 4}}]

        ## Overgrowth
data modify storage eoflib:config eof.Abilities[].RainWings[].secondary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'rainwings', name: 'overgrowth', cooldown: 24, duration: 0}}, mc_data: {display: {Name: '{"text": "Overgrowth", "color": "dark_green", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '{"keybind": "key.use", "color": "gray"}', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Slowness 2", "color": "yellow"}, {"text": " (8s)", "color": "gray"}]', '[{"text": "• Resistance 2", "color": "green"}, {"text": " (8s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "24s", "color": "gray"}']}, CustomModelData: 101101, Unbreakable: true, HideFlags: 4}}]

        ## Soul Sap
data modify storage eoflib:config eof.Abilities[].RainWings[].tertiary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'rainwings', name: 'soul_sap', cooldown: 12, duration: 0}}, mc_data: {display: {Name: '{"text": "Soul Sap", "color": "green", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '{"text": "Attack", "color": "gray"}', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Regeneration 3", "color": "green"}, {"text": " (2s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "12s", "color": "gray"}']}, CustomModelData: 101110, Unbreakable: true, HideFlags: 4}}]

#endregion

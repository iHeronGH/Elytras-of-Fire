#> eof:load/gen/storages/ability_data/sandwings
#
# Generate SandWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/sandwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/sandwings.mcfunction", "color": "aqua"}}}]

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].SandWings[].primary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'sandwings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}, mc_data: {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '{"text": "• Creates a trail of", "color": "red"}', '{"text": "fire, igniting enemies", "color": "red"}', '{"text": "on contact", "color": "red"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 110000, Unbreakable: true, HideFlags: 4}}]

        ## Desert Storm
data modify storage eoflib:config eof.Abilities[].SandWings[].secondary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'sandwings', name: 'desert_storm', cooldown: 24, duration: 0}}, mc_data: {display: {Name: '{"text": "Desert Storm", "color": "yellow", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '{"keybind": "key.use", "color": "gray"}', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Blindness", "color": "red"}, {"text": " (6s)", "color": "gray"}]', '[{"text": "• Strength 2", "color": "green"}, {"text": " (10s)", "color": "gray"}]', '[{"text": "• Speed 3", "color": "green"}, {"text": " (10s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "24s", "color": "gray"}']}, CustomModelData: 110001, Unbreakable: true, HideFlags: 4}}]

        ## Toxin Slash
data modify storage eoflib:config eof.Abilities[].SandWings[].tertiary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'sandwings', name: 'toxin_slash', cooldown: 0, duration: 0}}, mc_data: {display: {Name: '{"text": "Toxin Slash", "color": "green", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '{"text": "Attack", "color": "gray"}', '{"text": "Effects:", "color": "dark_gray"}', '[{"text": "• Poison 1", "color": "red"}, {"text": " (4s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "N/A", "color": "gray"}']}, CustomModelData: 110010, Unbreakable: true, HideFlags: 4}}]

#endregion

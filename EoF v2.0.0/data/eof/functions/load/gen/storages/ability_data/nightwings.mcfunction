#> eof:load/gen/storages/ability_data/nightwings
#
# Generate NightWing ability data into storage.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:ability_data/nightwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/storages/ability_data/nightwings.mcfunction", "color": "aqua"}}}]

    # Generate ability data
        ## Flame Breath
data modify storage eoflib:config eof.Abilities[].NightWings[].primary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'primary', tribe: 'nightwings', name: 'flame_breath', cooldown: 10, duration: 0}, raycast_data: {arc_intensity: 0, range: 11, particle: "flame", blocks: {passthrough: "#eoflib:passable/general", action: "burn", influences: "#eof:flora"}}}, mc_data: {display: {Name: '{"text": "Flame Breath", "color": "red", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"keybind": "key.sneak", "color": "gray"}, {"text": " + "}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '{"text": "• Creates a trail of", "color": "red"}', '{"text": "fire, igniting enemies", "color": "red"}', '{"text": "on contact", "color": "red"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "10s", "color": "gray"}']}, CustomModelData: 101000, Unbreakable: true, HideFlags: 4}}]

        ## Shade Shackle
data modify storage eoflib:config eof.Abilities[].NightWings[].secondary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'secondary', tribe: 'nightwings', name: 'shade_shackle', cooldown: 0, duration: 0}}, mc_data: {display: {Name: '{"text": "Shade Shackle", "color": "dark_purple", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '[{"text": "Hold + ", "color": "gray"}, {"keybind": "key.use"}]', '{"text": "Effects:", "color": "dark_gray"}', '{"text": "• Blindness", "color": "red"}', '{"text": "• Slowness 3 up to 6m away", "color": "yellow"}', '{"text": "• Slowness 2 up to 10m away", "color": "yellow"}', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "N/A", "color": "gray"}']}, CustomModelData: 101001, Unbreakable: true, HideFlags: 4}}]

        ## Premonition
data modify storage eoflib:config eof.Abilities[].NightWings[].tertiary set value [{eof_data: {dlc: 'eof', version: '2_0_0', ability_data: {archetype: 'tertiary', tribe: 'nightwings', name: 'premonition', cooldown: 20, duration: 10}}, mc_data: {display: {Name: '{"text": "Premonition", "color": "dark_gray", "italic": false}', Lore: ['{"text": "Activation:", "color": "dark_gray"}', '{"text": "Attack", "color": "gray"}', '{"text": "Effects:", "color": "dark_gray"}', '{"text": "• Generates an", "color": "green"}', '{"text": "impermeable barrier,", "color": "green"}', '[{"text": "blocking projectiles", "color": "green"}, {"text": " (10s)", "color": "gray"}]', '{"text": "Cooldown:", "color": "dark_gray"}', '{"text": "20s", "color": "gray"}']}, CustomModelData: 101010, Unbreakable: true, HideFlags: 4}}]

#endregion

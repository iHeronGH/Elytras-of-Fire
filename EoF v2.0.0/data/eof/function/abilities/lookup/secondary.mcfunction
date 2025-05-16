#> eof:abilities/lookup/secondary
#
# Lookup for secondary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=eof:abilities/criteria/icewings/serrated_strike, predicate=!eof:abilities/cooldowns/icewings/serrated_strike] run function eof:abilities/activate/icewings/serrated_strike
execute if entity @s[predicate=eof:abilities/criteria/mudwings/terrashock, predicate=!eof:abilities/cooldowns/mudwings/terrashock] run function eof:abilities/activate/mudwings/terrashock
execute if entity @s[predicate=eof:abilities/criteria/nightwings/shade_shackle] run function eof:abilities/activate/nightwings/shade_shackle/toggle
execute if entity @s[predicate=eof:abilities/criteria/rainwings/overgrowth, predicate=!eof:abilities/cooldowns/rainwings/overgrowth] run function eof:abilities/activate/rainwings/overgrowth
execute if entity @s[predicate=eof:abilities/criteria/sandwings/desert_storm, predicate=!eof:abilities/cooldowns/sandwings/desert_storm] run function eof:abilities/activate/sandwings/desert_storm
execute if entity @s[predicate=eof:abilities/criteria/seawings/oceans_blessing] run function eof:abilities/activate/seawings/oceans_blessing/toggle
execute if entity @s[predicate=eof:abilities/criteria/skywings/sky_surge, predicate=!eof:abilities/cooldowns/skywings/sky_surge] run function eof:abilities/activate/skywings/sky_surge

    # Silly Goofy Mode shenanigans
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..5 run tellraw @s {"text": "woah bro something is up with this slot", "color": "gold"}
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..5 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..1 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/primary
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..1 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary

#endregion

#> eof:abilities/lookup/primary
#
# Lookup for primary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/lookup/primary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/lookup/primary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/lookup/primary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=eof:abilities/criteria/icewings/frost_breath, predicate=!eof:abilities/cooldowns/icewings/frost_breath] run function eof:abilities/activate/icewings/frost_breath
execute if entity @s[predicate=eof:abilities/criteria/mudwings/flame_breath, predicate=!eof:abilities/cooldowns/mudwings/flame_breath] run function eof:abilities/activate/mudwings/flame_breath
execute if entity @s[predicate=eof:abilities/criteria/nightwings/flame_breath, predicate=!eof:abilities/cooldowns/nightwings/flame_breath] run function eof:abilities/activate/nightwings/flame_breath
execute if entity @s[predicate=eof:abilities/criteria/rainwings/venom_shot, predicate=!eof:abilities/cooldowns/rainwings/venom_shot] run function eof:abilities/activate/rainwings/venom_shot
execute if entity @s[predicate=eof:abilities/criteria/sandwings/flame_breath, predicate=!eof:abilities/cooldowns/sandwings/flame_breath] run function eof:abilities/activate/sandwings/flame_breath
execute if entity @s[predicate=eof:abilities/criteria/seawings/tidal_wave, predicate=!eof:abilities/cooldowns/seawings/tidal_wave] run function eof:abilities/activate/seawings/tidal_wave
execute if entity @s[predicate=eof:abilities/criteria/skywings/flame_breath, predicate=!eof:abilities/cooldowns/skywings/flame_breath] run function eof:abilities/activate/skywings/flame_breath

    # Silly Goofy Mode shenanigans
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..5 run tellraw @s {"text": "woah bro something is up with this slot", "color": "gold"}
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..5 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/primary
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..1 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/secondary
execute if entity @s[tag=eoflib.silly_goofy_mode] if score @s eoflib.silly_goofy_mode matches ..1 run function eoflib:load/silly_goofy_mode/randomise_ability_slot/tertiary

#endregion

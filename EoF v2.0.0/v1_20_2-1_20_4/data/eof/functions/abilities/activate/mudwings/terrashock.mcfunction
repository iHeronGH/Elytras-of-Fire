#> eof:abilities/activate/mudwings/terrashock
#
# Activate MudWing ability Terrashock.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/terrashock.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/mudwings/terrashock.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/terrashock.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/mudwings/terrashock.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/terrashock.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/mudwings/terrashock.mcfunction", "color": "aqua"}}}]

    # Activate Terrashock
        ## Announce activation
title @s actionbar {"text": "Terrashock activated!", "color": "gold"}

        ## User effects
effect give @s absorption 10 0 true
effect give @s resistance 10 0 true
effect give @s strength 10 2 true
execute if entity @s[predicate=eof:passives/sibling_bond/1] run effect give @s speed 6 0 true

        ## Enemy effects
effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/mudwings, distance=..10] slowness 6 0 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.terrashock = #cooldown eof.abilities.terrashock
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion

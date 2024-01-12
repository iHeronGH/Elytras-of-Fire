#> eof:abilities/activate/mudwings/terrashock
#
# Activate MudWing ability Terrashock.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/terrashock.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/terrashock.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/terrashock.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/terrashock.mcfunction", "color": "aqua"}}}]

    # Activate Terrashock
        ## Announce activation
title @s actionbar {"text": "Terrashock activated!", "color": "gold"}

        ## User effects
effect give @s absorption 10 0 true
effect give @s resistance 10 0 true
effect give @s strength 10 2 true
execute if entity @s[predicate=eof:passives/sibling_bond/1] run effect give @s speed 6 0 true

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/mudwings, distance=..10] slowness 6 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/terrashock

#endregion

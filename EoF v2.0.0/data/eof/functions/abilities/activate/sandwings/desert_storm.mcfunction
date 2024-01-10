#> eof:abilities/activate/sandwings/desert_storm
#
# Activate SandWing ability Desert Storm.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:desert_storm.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:desert_storm.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]

    # Activate Desert Storm
        ## Announce activation
title @s actionbar {"text": "Desert Storm activated!", "color": "yellow"}

        ## User effects
effect give @s strength 10 1 true
effect give @s speed 10 2 true

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/sandwings, distance=..10] blindness 6 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/desert_storm

#endregion

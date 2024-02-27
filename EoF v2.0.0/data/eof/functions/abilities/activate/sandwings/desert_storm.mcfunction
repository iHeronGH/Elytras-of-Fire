#> eof:abilities/activate/sandwings/desert_storm
#
# Activate SandWing ability Desert Storm.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/activate/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/activate/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]

    # Activate Desert Storm
        ## Announce activation
title @s actionbar {"text": "Desert Storm activated!", "color": "yellow"}

        ## User effects
effect give @s strength 10 1 true
effect give @s speed 10 2 true

        ## Enemy effects
effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/sandwings, distance=..10] blindness 6 0 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.desert_storm = #eof.abilities.desert_storm.cooldown eof.abilities.desert_storm
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/desert_storm

#endregion

#> eof:abilities/activate/rainwings/overgrowth
#
# Activate RainWing ability Overgrowth.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/overgrowth.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/overgrowth.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/overgrowth.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/overgrowth.mcfunction", "color": "aqua"}}}]

    # Activate Overgrowth
        ## Announce activation
title @s actionbar {"text": "Overgrowth activated!", "color": "dark_green"}

        ## User effects
effect give @s resistance 6 1 true
effect give @s slowness 8 1 true

        ## Enemy effects
effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/rainwings, distance=..8] slowness 8 1 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.overgrowth = #eof.abilities.overgrowth.cooldown eof.abilities.overgrowth
function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/overgrowth

#endregion

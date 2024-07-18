#> eof:abilities/activate/nightwings/premonition/activate
#
# Activate NightWing ability Premonition.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/nightwings/premonition/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/nightwings/premonition/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/nightwings/premonition/activate.mcfunction", "color": "aqua"}}}]

    # Activate Premonition
        ## Announce activation
title @s actionbar {"text": "Premonition activated!", "color": "dark_gray"}

        ## Initialise Premonition
tag @s add eof.abilities.premonition
scoreboard players operation @s eof.abilities.premonition = #eof.abilities.premonition.cooldown eof.abilities.premonition

        ## Begin loop
function eof:abilities/activate/nightwings/premonition/loop

#endregion

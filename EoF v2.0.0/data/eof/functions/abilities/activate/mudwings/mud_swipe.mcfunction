#> eof:abilities/activate/mudwings/mud_swipe
#
# Activate MudWing ability Mud Swipe.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/mudwings/mud_swipe.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]

    # Activate Mud Swipe
        ## Announce activation
title @s actionbar {"text": "Mud Swipe activated!", "color": "yellow"}

        ## User effects
        
        ## Enemy effects
execute as @e[sort=nearest, limit=1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, distance=..7] run effect give @s slowness 6 0 true
execute as @e[sort=nearest, limit=1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, distance=..7] run effect give @s weakness 4 0 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.mud_swipe = #eof.abilities.mud_swipe.cooldown eof.abilities.mud_swipe
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/mud_swipe

#endregion

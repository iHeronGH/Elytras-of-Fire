#> eof:abilities/activate/rainwings/venom_shot
#
# Activate RainWing ability Venom Shot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/venom_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/venom_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/rainwings/venom_shot.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/venom_shot.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]

    # Activate Venom Shot
        ## Announce activation
title @s actionbar {"text": "Venom Shot activated!", "color": "white"}

        ## User effects
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].RainWings[].primary[].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.venom_shot = #eof.abilities.venom_shot.cooldown eof.abilities.venom_shot
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/venom_shot

#endregion

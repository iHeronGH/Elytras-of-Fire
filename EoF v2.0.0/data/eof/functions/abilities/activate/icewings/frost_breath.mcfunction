#> eof:abilities/activate/icewings/frost_breath
#
# Activate IceWing ability Frost Breath.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/icewings/frost_breath.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/icewings/frost_breath.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/icewings/frost_breath.mcfunction", "color": "aqua"}}}]

    # Activate Frost Breath
        ## Announce activation
title @s actionbar {"text": "Frost Breath activated!", "color": "aqua"}

        ## User effects
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].IceWings[].primary[].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.frost_breath = #eof.abilities.frost_breath.cooldown eof.abilities.frost_breath
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/frost_breath

#endregion

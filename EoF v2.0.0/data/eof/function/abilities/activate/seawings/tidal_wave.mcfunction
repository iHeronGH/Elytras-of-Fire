#> eof:abilities/activate/seawings/tidal_wave
#
# Activate SeaWing ability Tidal Wave.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/seawings/tidal_wave.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Activate Tidal Wave
        ## Announce activation
title @s actionbar {"text": "Tidal Wave activated!", "color": "blue"}

        ## User effects
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^-0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^ ^ ^1 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.259 ^ ^0.966 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data
execute anchored eyes positioned ^ ^-0.2 ^ facing ^0.5 ^ ^0.866 run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] eof.abilities.tidal_wave = #cooldown eof.abilities.tidal_wave
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion

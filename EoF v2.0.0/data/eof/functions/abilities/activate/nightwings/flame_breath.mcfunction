#> eof:abilities/activate/nightwings/flame_breath
#
# Activate NightWing ability Flame Breath.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/nightwings/flame_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/nightwings/flame_breath.mcfunction", "color": "aqua"}}}]

    # Activate Flame Breath
        ## User effects
title @s actionbar {"text": "Flame Breath activated!", "color": "red"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].NightWings[].primary[].eof_data
tag @s remove eof.effects.frostbite.1

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/flame_breath

#endregion

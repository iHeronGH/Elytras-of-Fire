#> eof:abilities/activate/mudwings/flame_breath
#
# Activate MudWing ability Flame Breath.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/flame_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/flame_breath.mcfunction", "color": "aqua"}}}]

    # Activate Flame Breath
        ## User Effects
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].MudWings[].primary[].eof_data
tag @s remove eof.effects.frostbite.1

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/flame_breath

#endregion

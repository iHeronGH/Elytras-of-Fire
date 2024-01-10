#> eof:abilities/activate/rainwings/venom_shot
#
# Activate RainWing ability Venom Shot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:venom_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:venom_shot.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]

    # Activate Venom Shot
        ## User Effects
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config eof.Abilities[].RainWings[].primary[].eof_data

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/venom_shot

#endregion

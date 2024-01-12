#> eof:abilities/activate/mudwings/mud_swipe
#
# Activate MudWing ability Mud Swipe.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]

    # Activate Mud Swipe
        ## User effects
        
        ## Enemy effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s slowness 6 0 true
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s weakness 4 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/mudwings/mud_swipe

#endregion

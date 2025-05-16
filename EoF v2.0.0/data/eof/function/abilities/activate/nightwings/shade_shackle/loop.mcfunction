#> eof:abilities/activate/nightwings/shade_shackle/loop
#
# Loop Shade Shackle effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/loop.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/loop.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/loop.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle/loop.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/activate/nightwings/shade_shackle/loop.mcfunction", "color": "aqua"}}}]

    # Run Shade Shackle
        ## User effects
effect give @a[tag=eof.nightwings.shade_shackle] slowness 1 2 true

        ## Enemy effects
execute at @a[tag=eof.nightwings.shade_shackle, predicate=eof:tribes/nightwings] run effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/nightwings, distance=0.1..6] blindness 2 0 true
execute at @a[tag=eof.nightwings.shade_shackle, predicate=eof:tribes/nightwings] run effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/nightwings, distance=0.1..6] slowness 2 2 true
execute at @a[tag=eof.nightwings.shade_shackle, predicate=eof:tribes/nightwings] run effect give @e[predicate=eoflib:entities/affected, predicate=!eof:tribes/nightwings, distance=6..10] slowness 1 1 true

    # Loop
execute if entity @a[tag=eof.nightwings.shade_shackle, predicate=eoflib:inventory/mainhand/ability/secondary, predicate=eof:tribes/nightwings] run schedule function eof:abilities/activate/nightwings/shade_shackle/loop 1t

#endregion

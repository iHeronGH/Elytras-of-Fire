#> eof:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:tribe_advancements.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/tribe_advancements.mcfunction", "color": "aqua"}}}]

    # Remove other tribe advancements
execute if entity @s[predicate=!eof:tribes/none] run advancement revoke @s only eof:none
execute if entity @s[predicate=!eof:tribes/pyrrhian] run advancement revoke @s only eof:pyrrhian

#endregion

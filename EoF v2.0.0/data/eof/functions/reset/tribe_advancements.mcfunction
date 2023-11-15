#> eof:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
    # Remove other tribe advancements
execute if entity @s[predicate=!eof:tribes/none] run advancement revoke @s only eof:none
execute if entity @s[predicate=!eof:tribes/pyrrhian] run advancement revoke @s only eof:pyrrhian

#endregion

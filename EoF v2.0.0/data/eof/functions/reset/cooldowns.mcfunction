#> eof:reset/cooldowns
#
# Reset cooldowns for passives and abilities when a user changes tribes.

#region
    # Remove other tribe cooldowns
execute if entity @s[predicate=!eof:tribes/icewings] run function eof:reset/cooldowns/icewings
execute if entity @s[predicate=!eof:tribes/mudwings] run function eof:reset/cooldowns/mudwings
execute if entity @s[predicate=!eof:tribes/nightwings] run function eof:reset/cooldowns/nightwings
execute if entity @s[predicate=!eof:tribes/rainwings] run function eof:reset/cooldowns/rainwings
execute if entity @s[predicate=!eof:tribes/sandwings] run function eof:reset/cooldowns/sandwings
execute if entity @s[predicate=!eof:tribes/seawings] run function eof:reset/cooldowns/seawings
execute if entity @s[predicate=!eof:tribes/skywings] run function eof:reset/cooldowns/skywings

#endregion

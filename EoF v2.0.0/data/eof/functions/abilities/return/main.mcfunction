#> eof:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
tellraw @s "eof:abilities/return/main"

    # Return abilities
execute if entity @s[predicate=eof:tribes/icewings] run function eof:abilities/return/icewings/all
execute if entity @s[predicate=eof:tribes/mudwings] run function eof:abilities/return/mudwings/all
execute if entity @s[predicate=eof:tribes/nightwings] run function eof:abilities/return/nightwings/all
execute if entity @s[predicate=eof:tribes/rainwings] run function eof:abilities/return/rainwings/all
execute if entity @s[predicate=eof:tribes/sandwings] run function eof:abilities/return/sandwings/all
execute if entity @s[predicate=eof:tribes/seawings] run function eof:abilities/return/seawings/all
execute if entity @s[predicate=eof:tribes/skywings] run function eof:abilities/return/skywings/all

#endregion

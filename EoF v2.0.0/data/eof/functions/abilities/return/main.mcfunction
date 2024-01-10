#> eof:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
execute if entity @s[predicate=eof:tribes/icewings] run function eof:abilities/return/icewings/all
execute if entity @s[predicate=eof:tribes/mudwings] run function eof:abilities/return/mudwings/all
execute if entity @s[predicate=eof:tribes/nightwings] run function eof:abilities/return/nightwings/all
execute if entity @s[predicate=eof:tribes/rainwings] run function eof:abilities/return/rainwings/all
execute if entity @s[predicate=eof:tribes/sandwings] run function eof:abilities/return/sandwings/all
execute if entity @s[predicate=eof:tribes/seawings] run function eof:abilities/return/seawings/all
execute if entity @s[predicate=eof:tribes/skywings] run function eof:abilities/return/skywings/all

#endregion

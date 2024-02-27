#> eof:abilities/cooldowns/main
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/cooldowns/main.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/cooldowns/main.mcfunction", "color": "aqua"}}}]

    # Mark executor as having an active cooldown

    # Run ability cooldowns
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/icewings, predicate=eof:abilities/cooldowns/icewings] run function eof:abilities/cooldowns/icewings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/mudwings, predicate=eof:abilities/cooldowns/mudwings] run function eof:abilities/cooldowns/mudwings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/nightwings, predicate=eof:abilities/cooldowns/nightwings] run function eof:abilities/cooldowns/nightwings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/rainwings, predicate=eof:abilities/cooldowns/rainwings] run function eof:abilities/cooldowns/rainwings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/sandwings, predicate=eof:abilities/cooldowns/sandwings] run function eof:abilities/cooldowns/sandwings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/seawings, predicate=eof:abilities/cooldowns/seawings] run function eof:abilities/cooldowns/seawings/all
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/skywings, predicate=eof:abilities/cooldowns/skywings] run function eof:abilities/cooldowns/skywings/all

    # Remove cooldown tag
tag @a[predicate=!eof:abilities/cooldowns/on_cooldown] remove eof.cooldown.active

    # Loop
execute if entity @a[tag=eof.cooldown.active] run schedule function eof:abilities/cooldowns/main 1t

#endregion

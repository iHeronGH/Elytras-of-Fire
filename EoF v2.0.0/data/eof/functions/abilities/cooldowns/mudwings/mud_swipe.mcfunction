#> eof:abilities/cooldowns/mudwings/mud_swipe
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/cooldowns/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/cooldowns/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=eof.cooldown.active, predicate=eof:tribes/mudwings, predicate=eof:abilities/cooldowns/mudwings/mud_swipe] eof.abilities.mud_swipe -= #eoflib.1 eoflib.numbers

#endregion
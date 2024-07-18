#> eof:abilities/cooldowns/sandwings/desert_storm
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/cooldowns/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/cooldowns/sandwings/desert_storm.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/cooldowns/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=eof.cooldown.active, predicate=eof:tribes/sandwings, predicate=eof:abilities/cooldowns/sandwings/desert_storm] eof.abilities.desert_storm -= #eoflib.1 eoflib.numbers

#endregion

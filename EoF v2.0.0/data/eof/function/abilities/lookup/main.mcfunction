#> eof:abilities/lookup/main
#
# Determine ability used from various criteria.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}}}]

    # Silly Goofy Mode shenanigans
execute if entity @s[tag=eoflib.silly_goofy_mode] store result score @s eoflib.silly_goofy_mode run random value 1..100

    # Check archetype of ability
execute unless entity @s[predicate=!eoflib:abilities/primary_activated, predicate=!eoflib:abilities/primary_used] if entity @s[predicate=eof:tribes/pyrrhian] run function eof:abilities/lookup/primary
execute unless entity @s[predicate=!eoflib:abilities/secondary_activated, predicate=!eoflib:abilities/secondary_used] if entity @s[predicate=eof:tribes/pyrrhian] run function eof:abilities/lookup/secondary
execute unless entity @s[predicate=!eoflib:abilities/tertiary_activated, predicate=!eoflib:abilities/tertiary_used] if entity @s[predicate=eof:tribes/pyrrhian] run function eof:abilities/lookup/tertiary

#endregion

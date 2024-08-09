#> eof:abilities/lookup/main
#
# Determine ability used from various criteria.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/lookup/main.mcfunction", "color": "aqua"}}}]

    # Check archetype of ability
execute unless entity @s[predicate=!eoflib:abilities/primary_activated, predicate=!eoflib:abilities/primary_used] run function eof:abilities/lookup/primary
execute unless entity @s[predicate=!eoflib:abilities/secondary_activated, predicate=!eoflib:abilities/secondary_used] run function eof:abilities/lookup/secondary
execute unless entity @s[predicate=!eoflib:abilities/tertiary_activated, predicate=!eoflib:abilities/tertiary_used] run function eof:abilities/lookup/tertiary

#endregion

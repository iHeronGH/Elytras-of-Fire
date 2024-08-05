#> eof:abilities/lookup/secondary
#
# Lookup for secondary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/secondary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/lookup/secondary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if predicate eof:abilities/criteria/icewings/serrated_strike run function eof:abilities/activate/icewings/serrated_strike
execute if predicate eof:abilities/criteria/mudwings/terrashock run function eof:abilities/activate/mudwings/terrashock
execute if predicate eof:abilities/criteria/nightwings/shade_shackle run function eof:abilities/activate/nightwings/shade_shackle/toggle
execute if predicate eof:abilities/criteria/rainwings/overgrowth run function eof:abilities/activate/rainwings/overgrowth
execute if predicate eof:abilities/criteria/sandwings/desert_storm run function eof:abilities/activate/sandwings/desert_storm
execute if predicate eof:abilities/criteria/seawings/oceans_blessing run function eof:abilities/activate/seawings/oceans_blessing/toggle
execute if predicate eof:abilities/criteria/skywings/sky_surge run function eof:abilities/activate/skywings/sky_surge

#endregion

#> eof:abilities/lookup/primary
#
# Lookup for primary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/lookup/primary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/lookup/primary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/primary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/lookup/primary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if predicate eof:abilities/criteria/icewings/frost_breath run function eof:abilities/activate/icewings/frost_breath
execute if predicate eof:abilities/criteria/mudwings/flame_breath run function eof:abilities/activate/mudwings/flame_breath
execute if predicate eof:abilities/criteria/nightwings/flame_breath run function eof:abilities/activate/nightwings/flame_breath
execute if predicate eof:abilities/criteria/rainwings/venom_shot run function eof:abilities/activate/rainwings/venom_shot
execute if predicate eof:abilities/criteria/sandwings/flame_breath run function eof:abilities/activate/sandwings/flame_breath
execute if predicate eof:abilities/criteria/seawings/tidal_wave run function eof:abilities/activate/seawings/tidal_wave
execute if predicate eof:abilities/criteria/skywings/flame_breath run function eof:abilities/activate/skywings/flame_breath

#endregion

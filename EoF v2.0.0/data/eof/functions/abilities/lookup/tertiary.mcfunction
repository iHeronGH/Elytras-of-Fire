#> eof:abilities/lookup/tertiary
#
# Lookup for tertiary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/lookup/tertiary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if predicate eof:abilities/criteria/icewings/icicle_incision run function eof:abilities/activate/icewings/icicle_incision
execute if predicate eof:abilities/criteria/mudwings/mud_swipe run function eof:abilities/activate/mudwings/mud_swipe
execute if predicate eof:abilities/criteria/nightwings/premonition run function eof:abilities/activate/nightwings/premonition/activate
execute if predicate eof:abilities/criteria/rainwings/soul_sap run function eof:abilities/activate/rainwings/soul_sap
execute if predicate eof:abilities/criteria/sandwings/toxin_slash run function eof:abilities/activate/sandwings/toxin_slash
execute if predicate eof:abilities/criteria/seawings/tail_flail run function eof:abilities/activate/seawings/tail_flail
execute if predicate eof:abilities/criteria/skywings/spark_punch run function eof:abilities/activate/skywings/spark_punch/activated

#endregion

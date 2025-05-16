#> eof:abilities/lookup/tertiary
#
# Lookup for tertiary ability used.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/lookup/tertiary.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:lookup/tertiary.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/lookup/tertiary.mcfunction", "color": "aqua"}}}]

    # Lookup ability used
execute if entity @s[predicate=eof:abilities/criteria/icewings/icicle_incision] run function eof:abilities/activate/icewings/icicle_incision
execute if entity @s[predicate=eof:abilities/criteria/mudwings/mud_swipe, predicate=!eof:abilities/cooldowns/mudwings/mud_swipe] run function eof:abilities/activate/mudwings/mud_swipe
execute if entity @s[predicate=eof:abilities/criteria/nightwings/premonition, predicate=!eof:abilities/cooldowns/nightwings/premonition] run function eof:abilities/activate/nightwings/premonition/activate
execute if entity @s[predicate=eof:abilities/criteria/rainwings/soul_sap, predicate=!eof:abilities/cooldowns/rainwings/soul_sap] run function eof:abilities/activate/rainwings/soul_sap
execute if entity @s[predicate=eof:abilities/criteria/sandwings/toxin_slash] run function eof:abilities/activate/sandwings/toxin_slash
execute if entity @s[predicate=eof:abilities/criteria/seawings/tail_flail, predicate=!eof:abilities/cooldowns/seawings/tail_flail] run function eof:abilities/activate/seawings/tail_flail
execute if entity @s[predicate=eof:abilities/criteria/skywings/spark_punch/activate] run function eof:abilities/activate/skywings/spark_punch/activate
execute if entity @s[predicate=eof:abilities/criteria/skywings/spark_punch/use] run function eof:abilities/activate/skywings/spark_punch/use

#endregion

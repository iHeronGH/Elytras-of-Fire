#> eof:passives/mudwings/sibling_bond/1
#
# Grant effects based on the MudWing passive ability Sibling Bond.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sibling_bond/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:passives/mudwings/sibling_bond/1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sibling_bond/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:passives/mudwings/sibling_bond/1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sibling_bond/1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:passives/mudwings/sibling_bond/1.mcfunction", "color": "aqua"}}}]

    # Sibling Bond effects
effect give @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.regen.active, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] speed 1 0 true
effect give @a[tag=eoflib.atts, tag=eof.passives.rejuvenation.regen.active, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] speed 1 1 true

#endregion

#> eof:passives/main
#
# Applies effects to players with their effects toggled on.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:passives/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:passives/main.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:passives/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/main.mcfunction", "color": "aqua"}}}]

    # Clear other advancements
function #eoflib:reset/tribe_advancements

    # Clear other cooldowns
execute if entity @a[predicate=eof:abilities/cooldowns/on_cooldown] run function #eoflib:reset/cooldowns

    # Determine effects based on tribe
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/icewings] run function eof:passives/icewings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] run function eof:passives/mudwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] run function eof:passives/nightwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/rainwings] run function eof:passives/rainwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] run function eof:passives/sandwings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/seawings] run function eof:passives/seawings/base
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/skywings] run function eof:passives/skywings/base

#endregion

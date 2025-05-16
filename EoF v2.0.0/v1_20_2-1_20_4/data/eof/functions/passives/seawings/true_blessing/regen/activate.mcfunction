#> eof:passives/seawings/true_blessing/regen/activate
#
# Activate True Blessing's regen aspect.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:regen/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/seawings/true_blessing/regen/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:regen/activate.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/seawings/true_blessing/regen/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:regen/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/seawings/true_blessing/regen/activate.mcfunction", "color": "aqua"}}}]

    # Effect players
        ## True Blessing disabled
effect give @a[tag=eoflib.atts, tag=!eof.passives.true_blessing.regen.active, predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/regen/1] regeneration 3 1 true
        
    # Set scoreboard
scoreboard players operation @a[tag=eoflib.atts, tag=!eof.passives.true_blessing.regen.active, predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/regen/1] eof.passives.true_blessing.regen = #cooldown eof.passives.true_blessing.regen

    # Add tags
tag @a[tag=eoflib.atts, tag=!eof.passives.true_blessing.regen.active, predicate=eof:tribes/seawings, predicate=eof:passives/true_blessing/regen/1] add eof.passives.true_blessing.regen.active

    # Begin loop
function eof:passives/seawings/true_blessing/regen/cooldown

#endregion

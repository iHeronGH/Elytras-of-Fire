#> eof:passives/seawings/true_blessing/swim/1/deactivate
#
# Deactivate True Blessing due to either a failed charge or successful cooldown.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/deactivate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/deactivate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
execute if entity @s[tag=!eof.passives.true_blessing.swim.active] run title @s actionbar {"text": "True Blessing charge failed!", "color": "dark_aqua"}
execute if entity @s[tag=eof.passives.true_blessing.swim.active] run title @s actionbar {"text": "True Blessing charge ready!", "color": "dark_aqua"}

    # Resolve tags
tag @s remove eof.passives.true_blessing.swim.init
tag @s remove eof.passives.true_blessing.swim.active

    # Reset scores
scoreboard players set @s eof.passives.true_blessing.swim 0

#endregion

#> eof:passives/seawings/true_blessing/regen/cooldown
#
# Loops the cooldown for the regen aspect of the passive ability True Blessing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/seawings/true_blessing/regen/1/cooldown.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/seawings/true_blessing/regen/1/cooldown.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/seawings/true_blessing/regen/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players remove @a[tag=eof.passives.true_blessing.regen.active] eof.passives.true_blessing.regen 1

    # Check loop criteria
        ## On Fail
execute as @a[tag=eof.passives.true_blessing.regen.active, scores={eof.passives.true_blessing.regen=..0}] run function eof:passives/seawings/true_blessing/regen/deactivate

        ## On Success
execute if entity @a[tag=eof.passives.true_blessing.regen.active, predicate=eof:passives/true_blessing/regen/1] run schedule function eof:passives/seawings/true_blessing/regen/cooldown 1t

#endregion

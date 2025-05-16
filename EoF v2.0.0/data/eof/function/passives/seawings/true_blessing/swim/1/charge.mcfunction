#> eof:passives/seawings/true_blessing/swim/1/charge
#
# Runs charge functions for the True Blessing passive attribute.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/charge.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/charge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/seawings/true_blessing/swim/1/charge.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players add @a[tag=eof.passives.true_blessing.swim.init, tag=!eof.passives.true_blessing.swim.active] eof.passives.true_blessing.swim 1

    # Charge display
execute as @a[tag=eof.passives.true_blessing.swim.init, tag=!eof.passives.true_blessing.swim.active, scores={eof.passives.true_blessing.swim=1..100}] run function eof:passives/seawings/true_blessing/swim/1/charge_tree/l1

    # Check loop criteria
        ## Stop loop
            ### Stopped charging
execute as @a[tag=eof.passives.true_blessing.swim.init, tag=!eof.passives.true_blessing.swim.active] unless entity @s[predicate=eof:passives/true_blessing/swim/1, scores={eof.passives.true_blessing.swim=1..100}] run function eof:passives/seawings/true_blessing/swim/1/deactivate

            ### Fully charged
execute as @a[tag=eof.passives.true_blessing.swim.init, tag=!eof.passives.true_blessing.swim.active, scores={eof.passives.true_blessing.swim=100}] as @a[tag=eof.passives.true_blessing.swim.init, scores={eof.passives.true_blessing.swim=100}] at @s run function eof:passives/seawings/true_blessing/swim/1/activate

        ## Continue loop
execute if entity @a[tag=eof.passives.true_blessing.swim.init, tag=!eof.passives.true_blessing.swim.active, scores={eof.passives.true_blessing.swim=1..100}] run schedule function eof:passives/seawings/true_blessing/swim/1/charge 1t

#endregion

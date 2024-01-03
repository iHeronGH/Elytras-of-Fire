#> eof:passives/seawings/true_blessing/1/charge
#
# Runs charge functions for the True Blessing passive attribute.

#region
    # Increment scores
scoreboard players add @a[tag=eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active] eof.passives.true_blessing 111

    # Charge display
execute as @a[tag=eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active, scores={eof.passives.true_blessing=1..100}] run function eof:passives/seawings/true_blessing/1/charge_tree/l1

    # Check loop criteria
        ## Stop loop
            ### Stopped charging
execute as @a[tag=eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active] unless entity @s[predicate=eof:passives/true_blessing/1, scores={eof.passives.true_blessing=1..100}] run function eof:passives/seawings/true_blessing/1/deactivate

            ### Fully charged
execute as @a[tag=eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active, scores={eof.passives.true_blessing=100}] as @a[tag=eof.passives.true_blessing.init, scores={eof.passives.true_blessing=100}] at @s run function eof:passives/seawings/true_blessing/1/activate

        ## Continue loop
execute if entity @a[tag=eof.passives.true_blessing.init, tag=!eof.passives.true_blessing.active, scores={eof.passives.true_blessing=1..100}] run schedule function eof:passives/seawings/true_blessing/1/charge 1t

#endregion

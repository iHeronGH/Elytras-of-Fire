#> eof:effects/skywings/skyborn/jump/1/charge
#
# Runs charge functions for the skyborn passive attribute.

#region
    # Increment scores
scoreboard players add @a[tag=eof.passives.skyborn.init, tag=!eof.passives.skyborn.active] eof.passives.skyborn.jump 1

    # Charge display
execute as @a[tag=eof.passives.skyborn.init, tag=!eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..100}] run function eof:effects/skywings/skyborn/jump/1/charge_tree/l1

    # Check loop criteria
        ## Stop loop
            ### Stopped charging
execute as @a[tag=eof.passives.skyborn.init, tag=!eof.passives.skyborn.active] unless entity @s[predicate=eof:passives/skyborn/jump/1, scores={eof.passives.skyborn.jump=1..100}] run function eof:effects/skywings/skyborn/jump/1/deactivate

            ### Fully charged
execute as @a[tag=eof.passives.skyborn.init, tag=!eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=100}] as @a[tag=eof.passives.skyborn.init, scores={eof.passives.skyborn.jump=100}] at @s run function eof:effects/skywings/skyborn/jump/1/activate

        ## Continue loop
execute if entity @a[tag=eof.passives.skyborn.init, tag=!eof.passives.skyborn.active, scores={eof.passives.skyborn.jump=1..100}] run schedule function eof:effects/skywings/skyborn/jump/1/charge 1t

#endregion

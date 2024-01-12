#> eof:passives/mudwings/rejuvenation/1/charge
#
# Runs charge functions for the Rejuvenation passive attribute.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/charge.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/charge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/charge.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players add @a[tag=eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active] eof.passives.rejuvenation 36

    # Charge display
execute as @a[tag=eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..3600}] run function eof:passives/mudwings/rejuvenation/1/charge_tree/l1

    # Check loop criteria
        ## Stop loop
            ### Stopped charging
execute as @a[tag=eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active] unless entity @s[predicate=eof:passives/rejuvenation/1, scores={eof.passives.rejuvenation=1..3600}] run function eof:passives/mudwings/rejuvenation/1/deactivate

            ### Fully charged
execute as @a[tag=eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=3600}] at @s run function eof:passives/mudwings/rejuvenation/1/activate

    ## Continue loop
execute if entity @a[tag=eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, scores={eof.passives.rejuvenation=1..3600}] run schedule function eof:passives/mudwings/rejuvenation/1/charge 1t

#endregion

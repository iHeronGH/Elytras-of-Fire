#> eof:abilities/activate/icewings/icicle_incision
#
# Activate IceWing ability Icicle Incision.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/icicle_incision.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/activate/icewings/icicle_incision.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/icicle_incision.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/activate/icewings/icicle_incision.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/icicle_incision.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/activate/icewings/icicle_incision.mcfunction", "color": "aqua"}}}]

    # Activate Icicle Incision
        ## Announce activation
title @s actionbar {"text": "Icicle Incision activated!", "color": "white"}

        ## User effects
        
        ## Enemy effects
            ### Non-Frostbitten Effects
execute as @e[sort=nearest, limit=1, tag=!eof.effects.frostbite.1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, distance=0.1..10] run effect give @s poison 2 1 true

            ### Frostbitten effects
execute as @e[sort=nearest, limit=1, tag=eof.effects.frostbite.1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, predicate=!eof:tribes/icewings, distance=0.1..10] run effect give @s wither 3 1 true
execute as @e[sort=nearest, limit=1, tag=eof.effects.frostbite.1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, predicate=!eof:tribes/icewings, distance=0.1..10] run tag @s remove eof.effects.frostbite.1

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/icicle_incision

#endregion

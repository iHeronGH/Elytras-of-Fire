#> eof:abilities/activate/icewings/icicle_incision
#
# Activate IceWing ability Icicle Incision.

#region
    # Activate Icicle Incision
        ## User effects
        
        ## Enemy effects
            ### Non-Frostbitten Effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent] if entity @s[tag=!eof.effects.frostbite.1] run effect give @s poison 2 1 true

            ### Frostbitten effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, predicate=!eof:tribes/icewings, distance=..7] if entity @s[tag=eof.effects.frostbite.1] run effect give @s wither 3 1 true
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, predicate=!eof:tribes/icewings, distance=..7] if entity @s[tag=eof.effects.frostbite.1] run tag @s remove eof.effects.frostbite.1

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/icicle_incision

#endregion

#> eof:abilities/activate/skywings/spark_punch/activated
#
# Activate SkyWing ability Spark Punch.

#region
    # Activate Spark Punch
        ## User effects
        
        ## Enemy effects
execute if entity @s[tag=eof.skywings.spark_mode] as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run tag @s remove eof.effects.frostbite.1

    # Revoke advancement
advancement revoke @s only eof:abilities/skywings/spark_punch/activated

#endregion

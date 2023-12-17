#> eof:abilities/activate/sandwings/toxin_slash
#
# Activate SandWing ability Toxin Slash.

#region
    # Activate Toxin Slash
        ## User effects
        
        ## Enemy effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s poison 4 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/toxin_slash

#endregion

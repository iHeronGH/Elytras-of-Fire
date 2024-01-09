#> eof:reset/cooldowns/sandwings
#
# Reset all SandWing cooldowns.

#region
    # Reset SandWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/sandwings] eof.passives.dune_surfer.hunger 0
# say SandWing cooldowns reset.

#endregion

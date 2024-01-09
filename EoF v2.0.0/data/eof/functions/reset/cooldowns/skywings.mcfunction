#> eof:reset/cooldowns/skywings
#
# Reset all SkyWing cooldowns.

#region
    # Reset SkyWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.jump 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.regen 0
# say SkyWing cooldowns reset.

#endregion

#> eof:reset/cooldowns/mudwings
#
# Reset all MudWing cooldowns.

#region
    # Reset MudWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.rejuvenation 0
scoreboard players set @a[predicate=!eof:tribes/mudwings] eof.passives.sibling_bond 0
# say MudWing cooldowns reset.

#endregion

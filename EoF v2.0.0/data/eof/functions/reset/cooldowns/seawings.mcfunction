#> eof:reset/cooldowns/seawings
#
# Reset all SeaWing cooldowns.

#region
    # Reset SeaWing cooldowns
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.true_blessing 0
scoreboard players set @a[predicate=!eof:tribes/seawings] eof.passives.torrent 0
# say SeaWing cooldowns reset.

#endregion

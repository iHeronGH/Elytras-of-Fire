#> eof:abilities/return/icewings/frost_breath
#
# Grant the player the IceWing ability Frost Breath.

#region
    # Debug 
tellraw @s "eof:abilities/return/icewings/frost_breath.mcf"

    # Give Frost Breath
loot replace entity @s hotbar.6 loot eof:commands/ability/icewings/frost_breath

#endregion

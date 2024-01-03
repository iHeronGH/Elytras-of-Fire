#> eof:passives/skywings/skyborn/jump/1/deactivate
#
# Deactivate charging of Skyborn's Jump aspect.

#region
    # Announce deactivation
execute if entity @s[tag=!eof.passives.skyborn.active] run title @s actionbar {"text":"Skyborn charge failed!", "color":"dark_red"}
execute if entity @s[tag=eof.passives.skyborn.active] run title @s actionbar {"text":"Skyborn charge ready!", "color":"dark_red"}

    # Resolve tags
tag @s remove eof.passives.skyborn.init
tag @s remove eof.passives.skyborn.active

    # Reset score
scoreboard players set @s eof.passives.skyborn.jump 0

#endregion

#> eof:passives/skywings/skyborn/regen/1/deactivate
#
#

#region
    # Announce Deactivation
title @s actionbar {"text":"Skyborn ready!", "color":"dark_red"}

    # Remove Tag
tag @s remove eof.passives.skyborn.regen

    # Reset Score
scoreboard players reset @s eof.passives.skyborn.regen

#endregion

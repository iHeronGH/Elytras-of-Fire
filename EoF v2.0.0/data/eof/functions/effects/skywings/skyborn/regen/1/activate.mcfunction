#> eof:effects/skywings/skyborn/regen/1/activate
#
# 

#region
    # Announce Activation
title @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] actionbar {"text":"Skyborn activated!", "color":"dark_red"}

    # Effect Players
effect give @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] regeneration 12 1 true

    # Add Tags
tag @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] add eof.passives.skyborn.regen

    # Set scoreboard
scoreboard players set @a[tag=eoflib.atts, tag=!eof.passives.skyborn.regen, predicate=eof:tribes/skywings, predicate=eof:passives/skyborn/regen/1] eof.passives.skyborn.regen 800

    # Begin Loop
function eof:effects/skywings/skyborn/regen/1/cooldown

#endregion

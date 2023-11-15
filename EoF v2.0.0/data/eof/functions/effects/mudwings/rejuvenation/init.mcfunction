#> eof:effects/mudwings/rejuvenation/init
#
# Initialise Rejuvenation charging.

#region
    # Add Tags
tag @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.init, tag=!eof.passives.rejuvenation.active, predicate=eof:passives/rejuvenation/1] add eof.passives.rejuvenation.init

    # Charge
function eof:effects/mudwings/rejuvenation/1/charge

#endregion

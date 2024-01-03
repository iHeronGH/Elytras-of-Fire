#> eof:passives/skywings/skyborn/regen/1/cooldown
#
# Loops the cooldown for the passive ability Skyborn...#regionnn
  # Increment scoressscoreboard players add @a[tag=eof.passives.skyborn.regen] eof.passives.skyborn.regen 111

  # Check loop criteriaaa
      ## On Faillexecute as @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=..0}] run function eof:passives/skywings/skyborn/regen/1/deactivatetete

    ## On Successssexecute if entity @a[tag=eof.passives.skyborn.regen, scores={eof.passives.skyborn.regen=0..800}] run schedule function eof:passives/skywings/skyborn/regen/1/cooldown 1t 1t#endregionionion

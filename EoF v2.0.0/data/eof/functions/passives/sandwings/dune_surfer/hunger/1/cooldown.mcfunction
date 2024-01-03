#> eof:passives/sandwings/dune_surfer/hunger/1/cooldown
#
# Loops the cooldown for the passive ability Dune Surfer.

#region
    # Increment scores
scoreboard players remove @a[tag=eof.passives.dune_surfer.hunger] eof.passives.dune_surfer.hunger 1

    # Check loop criteria
        ## On Fail
execute as @a[tag=eof.passives.dune_surfer.hunger, scores={eof.passives.dune_surfer.hunger=..0}] run function eof:passives/sandwings/dune_surfer/hunger/1/deactivate

        ## On Success
execute if entity @a[tag=eof.passives.dune_surfer.hunger, scores={eof.passives.dune_surfer.hunger=0..800}] run schedule function eof:passives/sandwings/dune_surfer/hunger/1/cooldown 1t

#endregion

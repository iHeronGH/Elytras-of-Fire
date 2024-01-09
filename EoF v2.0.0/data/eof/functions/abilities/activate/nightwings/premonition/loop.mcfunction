#> eof:abilities/activate/nightwings/premonition/loop
#
# Loop Premonition effects.

#region
    # Kill non-user-fired projectiles
execute as @a[tag=eof.abilities.premonition, predicate=eof:abilities/premonition/active] at @s anchored eyes positioned ^ ^ ^ as @e[type=#eoflib:projectiles, distance=0.5..4] unless score @s eoflib.id = @p[tag=eof.abilities.premonition, predicate=eof:abilities/premonition/active] eoflib.id run kill @s

    # Decrement Premonition score
scoreboard players remove @a[tag=eof.abilities.premonition] eof.abilities.premonition 1

    # Premonition deactivated
execute as @a[tag=eof.abilities.premonition] if score @s eof.abilities.premonition = #eof.abilities.premonition.duration_relative eof.abilities.premonition run title @s actionbar {"text": "Premonition is on cooldown!", "color": "dark_gray"}

    # Premonition off cooldown
execute as @a[tag=eof.abilities.premonition, scores={eof.abilities.premonition=0}] run function eof:abilities/activate/nightwings/premonition/deactivate

    # Loop
execute if entity @a[tag=eof.abilities.premonition, predicate=eof:tribes/nightwings, scores={eof.abilities.premonition=1..}] run schedule function eof:abilities/activate/nightwings/premonition/loop 1t

#endregion
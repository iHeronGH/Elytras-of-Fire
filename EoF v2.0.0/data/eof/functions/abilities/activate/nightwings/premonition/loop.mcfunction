#> eof:abilities/activate/nightwings/premonition/loop
#
# Loop Premonition effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/nightwings/premonition/loop.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:premonition/loop.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/nightwings/premonition/loop.mcfunction", "color": "aqua"}}}]

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

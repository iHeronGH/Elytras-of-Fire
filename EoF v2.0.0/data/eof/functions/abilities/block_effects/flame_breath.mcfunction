#> eof:abilities/block_effects/flame_breath
#
# Activate Flame Breath effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/flame_breath.mcf"]

    # Enemy effects
particle flame ~ ~ ~ 0 0 0 0.0875 50
particle lava ~ ~ ~ 0 0 0 0.05 15

#endregion

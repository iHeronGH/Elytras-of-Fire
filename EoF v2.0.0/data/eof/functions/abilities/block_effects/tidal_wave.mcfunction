#> eof:abilities/block_effects/tidal_wave
#
# Activate Tidal Wave effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/seawings/tidal_wave.mcf"]

    # Enemy effects
particle block water ~ ~ ~ 0 0 0 0.0875 40
particle fishing ~ ~ ~ 0 0 0 0.05 10
particle block snow ~ ~ ~ 0 0 0 0.05 10

#endregion

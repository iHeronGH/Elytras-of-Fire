#> eof:abilities/activate/sandwings/flame_breath
#
# Activate SandWing ability Flame Breath.

#region
    # Activate Flame Breath
tellraw @s {"text": "eof:abilities/activate/sandwings/flame_breath.mcf", "color": "yellow"}

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/flame_breath

#endregion

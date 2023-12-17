#> eof:abilities/activate/rainwings/venom_shot
#
# Activate RainWing ability Venom Shot.

#region
    # Activate Venom Shot
tellraw @s {"text": "eof:abilities/activate/rainwings/venom_shot.mcf", "color": "green"}

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/venom_shot

#endregion

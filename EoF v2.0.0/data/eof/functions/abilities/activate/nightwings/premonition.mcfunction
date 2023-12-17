#> eof:abilities/activate/nightwings/premonition
#
# Activate NightWing ability Premonition.

#region
    # Activate Premonition
tellraw @s {"text": "eof:abilities/activate/nightwings/premonition.mcf", "color": "dark_purple"}
        ## User effects
        
        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/premonition

#endregion

#> eof:abilities/activate/nightwings/flame_breath
#
# Activate NightWing ability Flame Breath.

#region
    # Activate Flame Breath
tellraw @s {"text": "eof:abilities/activate/nightwings/flame_breath.mcf", "color": "dark_purple"}
        ## User effects
        
        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/nightwings/flame_breath

#endregion

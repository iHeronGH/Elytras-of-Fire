#> eof:abilities/block_effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/main.mcf"]

    # Determine ability
execute if data storage eoflib_raycast:ability {ability_data: {name: "frost_breath"}} run function eof:abilities/block_effects/frost_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "flame_breath"}} run function eof:abilities/block_effects/flame_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "venom_shot"}} run function eof:abilities/block_effects/venom_shot
execute if data storage eoflib_raycast:ability {ability_data: {name: "tidal_wave"}} run function eof:abilities/block_effects/tidal_wave

#endregion

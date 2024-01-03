#> eof:abilities/effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Debug
tellraw @a "eof:abilities/effects/main.mcf"

    # Test
# execute if entity @s[predicate=eof:tribes/icewings] run function eof:abilities/effects/icewings/frost_breath
# execute if entity @s[predicate=eof:tribes/mudwings] run function eof:abilities/effects/mudwings/flame_breath
# execute if entity @s[predicate=eof:tribes/nightwings] run function eof:abilities/effects/nightwings/flame_breath
# execute if entity @s[predicate=eof:tribes/rainwings] run function eof:abilities/effects/rainwings/venom_shot
# execute if entity @s[predicate=eof:tribes/sandwings] run function eof:abilities/effects/sandwings/flame_breath
# execute if entity @s[predicate=eof:tribes/seawings] run function eof:abilities/effects/seawings/tidal_wave
# execute if entity @s[predicate=eof:tribes/skywings] run function eof:abilities/effects/skywings/flame_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "frost_breath"}} run function eof:abilities/effects/frost_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "flame_breath"}} run function eof:abilities/effects/flame_breath
execute if data storage eoflib_raycast:ability {ability_data: {name: "venom_shot"}} run function eof:abilities/effects/venom_shot
execute if data storage eoflib_raycast:ability {ability_data: {name: "tidal_wave"}} run function eof:abilities/effects/tidal_wave

#endregion

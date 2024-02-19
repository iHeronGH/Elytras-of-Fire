#> eof:abilities/activate/icewings/serrated_strike
#
# Activate IceWing ability Serrated Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/serrated_strike.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/icewings/serrated_strike.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/serrated_strike.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/icewings/serrated_strike.mcfunction", "color": "aqua"}}}]

    # Activate Serrated Strike
        ## Announce activation
title @s actionbar {"text": "Serrated Strike activated!", "color": "gray"}

        ## User effects
effect give @s strength 10 1 true
execute if entity @s[predicate=!eof:passives/cryoenergy/1, predicate=!eof:passives/cryoenergy/2] run effect give @s speed 10 0 true
execute if entity @s[predicate=eof:passives/cryoenergy/1] run effect give @s speed 10 1 true
execute if entity @s[predicate=eof:passives/cryoenergy/2] run effect give @s speed 10 2 true

        ## Enemy effects
tag @e[type=!#eoflib:unaffected, predicate=!eof:tribes/icewings, distance=..10] add eof.effects.frostbite.1

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add eof.cooldown.active
scoreboard players operation @s eof.abilities.serrated_strike = #eof.abilities.serrated_strike.cooldown eof.abilities.serrated_strike
function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only eof:abilities/icewings/serrated_strike

#endregion

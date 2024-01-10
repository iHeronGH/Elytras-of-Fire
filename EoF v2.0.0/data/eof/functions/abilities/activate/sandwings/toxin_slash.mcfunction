#> eof:abilities/activate/sandwings/toxin_slash
#
# Activate SandWing ability Toxin Slash.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:toxin_slash.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:toxin_slash.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]

    # Activate Toxin Slash
        ## User effects
        
        ## Enemy effects
execute as @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] run effect give @s poison 4 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/toxin_slash

#endregion

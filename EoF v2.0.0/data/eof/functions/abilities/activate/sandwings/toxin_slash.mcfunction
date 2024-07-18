#> eof:abilities/activate/sandwings/toxin_slash
#
# Activate SandWing ability Toxin Slash.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/toxin_slash.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/activate/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/toxin_slash.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/activate/sandwings/toxin_slash.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/toxin_slash.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/activate/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]

    # Activate Toxin Slash
        ## User effects
        
        ## Enemy effects
effect give @e[sort=nearest, limit=1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, distance=..7] poison 4 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/sandwings/toxin_slash

#endregion

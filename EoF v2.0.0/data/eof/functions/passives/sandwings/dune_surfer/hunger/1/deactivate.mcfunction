#> eof:passives/sandwings/dune_surfer/hunger/1/deactivate
#
# Deactivate Dune Surfer's hunger aspect.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/sandwings/dune_surfer/hunger/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Resolve tags
tag @s remove eof.passives.dune_surfer.hunger

    # Reset score
scoreboard players reset @s eof.passives.dune_surfer.hunger

#endregion

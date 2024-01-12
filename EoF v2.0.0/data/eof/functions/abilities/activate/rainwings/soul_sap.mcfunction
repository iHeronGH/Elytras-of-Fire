#> eof:abilities/activate/rainwings/soul_sap
#
# Activate RainWing ability Soul Sap.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/soul_sap.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/soul_sap.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/soul_sap.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/rainwings/soul_sap.mcfunction", "color": "aqua"}}}]

    # Activate Soul Sap
        ## User effects
effect give @s regeneration 2 2 true

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only eof:abilities/rainwings/soul_sap

#endregion

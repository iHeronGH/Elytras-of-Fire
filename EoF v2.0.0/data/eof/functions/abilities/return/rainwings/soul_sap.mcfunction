#> eof:abilities/return/rainwings/soul_sap
#
# Grant the player the RainWing ability Soul Sap.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/soul_sap.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/rainwings/soul_sap.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:rainwings/soul_sap.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/rainwings/soul_sap.mcfunction", "color": "aqua"}}}]

    # Give Soul Sap
loot replace entity @s hotbar.8 loot eof:commands/ability/rainwings/soul_sap

#endregion

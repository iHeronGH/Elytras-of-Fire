#> eof:abilities/return/mudwings/terrashock
#
# Grant the player the MudWing ability Terrashock.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:terrashock.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/mudwings/terrashock.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:terrashock.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/mudwings/terrashock.mcfunction", "color": "aqua"}}}]

    # Give Terrashock
loot replace entity @s hotbar.7 loot eof:commands/ability/mudwings/terrashock

#endregion

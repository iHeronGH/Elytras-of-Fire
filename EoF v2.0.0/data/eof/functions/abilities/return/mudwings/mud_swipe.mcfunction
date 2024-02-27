#> eof:abilities/return/mudwings/mud_swipe
#
# Grant the player the MudWing ability Mud Swipe.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/mud_swipe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/mudwings/mud_swipe.mcfunction", "color": "aqua"}}}]

    # Give Mud Swipe
loot replace entity @s hotbar.8 loot eof:commands/ability/mudwings/mud_swipe

#endregion

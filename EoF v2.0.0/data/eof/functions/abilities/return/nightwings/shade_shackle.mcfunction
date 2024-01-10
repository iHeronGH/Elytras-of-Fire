#> eof:abilities/return/nightwings/shade_shackle
#
# Grant the player the NightWing ability Shade Shackle.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/nightwings/shade_shackle.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:shade_shackle.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/nightwings/shade_shackle.mcfunction", "color": "aqua"}}}]

    # Give Shade Shackle
loot replace entity @s hotbar.7 loot eof:commands/ability/nightwings/shade_shackle

#endregion

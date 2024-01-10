#> eof:abilities/return/mudwings/flame_breath
#
# Grant the player the MudWing ability Flame Breath.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/mudwings/flame_breath.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:flame_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/mudwings/flame_breath.mcfunction", "color": "aqua"}}}]

    # Give Flame Breath
loot replace entity @s hotbar.6 loot eof:commands/ability/mudwings/flame_breath

#endregion

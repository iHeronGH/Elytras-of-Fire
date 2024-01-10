#> eof:abilities/return/rainwings/venom_shot
#
# Grant the player the RainWing ability Venom Shot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:venom_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:venom_shot.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/rainwings/venom_shot.mcfunction", "color": "aqua"}}}]

    # Give Venom Shot
loot replace entity @s hotbar.6 loot eof:commands/ability/rainwings/venom_shot

#endregion

#> eof:abilities/return/sandwings/toxin_slash
#
# Grant the player the SandWing ability Toxin Slash.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/toxin_slash.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/toxin_slash.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/return/sandwings/toxin_slash.mcfunction", "color": "aqua"}}}]

    # Give Toxin Slash
loot replace entity @s hotbar.8 loot eof:commands/ability/sandwings/toxin_slash

#endregion

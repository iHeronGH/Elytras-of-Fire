#> eof:abilities/return/icewings/icicle_incision
#
# Grant the player the IceWing ability Icicle Incision.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/icicle_incision.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/abilities/return/icewings/icicle_incision.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/icicle_incision.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/abilities/return/icewings/icicle_incision.mcfunction", "color": "aqua"}}}]

    # Give Icicle Incision
loot replace entity @s hotbar.8 loot eof:commands/ability/icewings/icicle_incision

#endregion

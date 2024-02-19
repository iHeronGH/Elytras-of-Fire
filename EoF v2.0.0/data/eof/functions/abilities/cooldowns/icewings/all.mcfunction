#> eof:abilities/cooldowns/icewings/all
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/cooldowns/icewings/all.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/cooldowns/icewings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/icewings, predicate=eof:abilities/cooldowns/icewings/frost_breath] run function eof:abilities/cooldowns/icewings/frost_breath
execute if entity @a[tag=eof.cooldown.active, predicate=eof:tribes/icewings, predicate=eof:abilities/cooldowns/icewings/serrated_strike] run function eof:abilities/cooldowns/icewings/serrated_strike

#endregion
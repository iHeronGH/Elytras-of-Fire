#> eof:abilities/return/icewings/frost_breath
#
# Grant the player the IceWing ability Frost Breath.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/abilities/return/icewings/frost_breath.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/abilities/return/icewings/frost_breath.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:icewings/frost_breath.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/abilities/return/icewings/frost_breath.mcfunction", "color": "aqua"}}}]

    # Give Frost Breath
execute if score @s eoflib.set_slot.primary matches 0 run loot replace entity @s hotbar.0 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 1 run loot replace entity @s hotbar.1 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 2 run loot replace entity @s hotbar.2 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 3 run loot replace entity @s hotbar.3 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 4 run loot replace entity @s hotbar.4 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 5 run loot replace entity @s hotbar.5 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 6 run loot replace entity @s hotbar.6 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 7 run loot replace entity @s hotbar.7 loot eof:commands/ability/icewings/frost_breath
execute if score @s eoflib.set_slot.primary matches 8 run loot replace entity @s hotbar.8 loot eof:commands/ability/icewings/frost_breath

#endregion

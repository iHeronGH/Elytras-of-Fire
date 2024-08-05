#> eof:abilities/return/seawings/tail_flail
#
# Grant the player the SeaWing ability Tail Flail.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tail_flail.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:abilities/return/seawings/tail_flail.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tail_flail.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:abilities/return/seawings/tail_flail.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tail_flail.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:abilities/return/seawings/tail_flail.mcfunction", "color": "aqua"}}}]

    # Give Tail Flail
execute if score @s eoflib.set_slot.tertiary matches 0 run loot replace entity @s hotbar.0 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 1 run loot replace entity @s hotbar.1 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 2 run loot replace entity @s hotbar.2 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 3 run loot replace entity @s hotbar.3 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 4 run loot replace entity @s hotbar.4 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 5 run loot replace entity @s hotbar.5 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 6 run loot replace entity @s hotbar.6 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 7 run loot replace entity @s hotbar.7 loot eof:commands/ability/seawings/tail_flail
execute if score @s eoflib.set_slot.tertiary matches 8 run loot replace entity @s hotbar.8 loot eof:commands/ability/seawings/tail_flail

#endregion

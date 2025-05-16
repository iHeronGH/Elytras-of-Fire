#> eof:abilities/return/sandwings/desert_storm
#
# Grant the player the SandWing ability Desert Storm.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/return/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/return/sandwings/desert_storm.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:sandwings/desert_storm.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/return/sandwings/desert_storm.mcfunction", "color": "aqua"}}}]

    # Give Desert Storm
execute if score @s eoflib.set_slot.secondary matches -106 run loot replace entity @s weapon.offhand loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 0 run loot replace entity @s hotbar.0 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 1 run loot replace entity @s hotbar.1 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 2 run loot replace entity @s hotbar.2 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 3 run loot replace entity @s hotbar.3 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 4 run loot replace entity @s hotbar.4 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 5 run loot replace entity @s hotbar.5 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 6 run loot replace entity @s hotbar.6 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 7 run loot replace entity @s hotbar.7 loot eof:commands/ability/sandwings/desert_storm
execute if score @s eoflib.set_slot.secondary matches 8 run loot replace entity @s hotbar.8 loot eof:commands/ability/sandwings/desert_storm

#endregion

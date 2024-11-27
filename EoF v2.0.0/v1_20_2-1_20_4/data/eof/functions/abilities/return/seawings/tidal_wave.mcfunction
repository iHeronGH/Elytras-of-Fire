#> eof:abilities/return/seawings/tidal_wave
#
# Grant the player the SeaWing ability Tidal Wave.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:abilities/return/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:abilities/return/seawings/tidal_wave.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tidal_wave.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:abilities/return/seawings/tidal_wave.mcfunction", "color": "aqua"}}}]

    # Give Tidal Wave
execute if score @s eoflib.set_slot.primary matches -106 run loot replace entity @s weapon.offhand loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 0 run loot replace entity @s hotbar.0 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 1 run loot replace entity @s hotbar.1 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 2 run loot replace entity @s hotbar.2 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 3 run loot replace entity @s hotbar.3 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 4 run loot replace entity @s hotbar.4 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 5 run loot replace entity @s hotbar.5 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 6 run loot replace entity @s hotbar.6 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 7 run loot replace entity @s hotbar.7 loot eof:commands/ability/seawings/tidal_wave
execute if score @s eoflib.set_slot.primary matches 8 run loot replace entity @s hotbar.8 loot eof:commands/ability/seawings/tidal_wave

#endregion

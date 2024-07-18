#> eof:passives/skywings/skyborn/jump/1/deactivate
#
# Deactivate charging of Skyborn's Jump aspect.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eof/functions/passives/skywings/skyborn/jump/1/deactivate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eof/functions/passives/skywings/skyborn/jump/1/deactivate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eof/functions/passives/skywings/skyborn/jump/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
execute if entity @s[tag=!eof.passives.skyborn.active] run title @s actionbar {"text": "Skyborn charge failed!", "color": "dark_red"}
execute if entity @s[tag=eof.passives.skyborn.active] run title @s actionbar {"text": "Skyborn charge ready!", "color": "dark_red"}

    # Resolve tags
tag @s remove eof.passives.skyborn.init
tag @s remove eof.passives.skyborn.active

    # Reset score
scoreboard players set @s eof.passives.skyborn.jump 0

#endregion

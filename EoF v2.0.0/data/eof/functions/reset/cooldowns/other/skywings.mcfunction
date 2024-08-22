#> eof:reset/cooldowns/other/skywings
#
# Reset all SkyWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:reset/cooldowns/other/skywings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:reset/cooldowns/other/skywings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:other/skywings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:reset/cooldowns/other/skywings.mcfunction", "color": "aqua"}}}]

    # Reset SkyWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.abilities.skywing_flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.abilities.sky_surge 0

        ## Reset passives
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.jump 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.regen 0

#endregion

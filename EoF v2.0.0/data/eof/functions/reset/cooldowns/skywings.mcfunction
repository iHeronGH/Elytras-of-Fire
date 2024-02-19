#> eof:reset/cooldowns/skywings
#
# Reset all SkyWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/skywings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/skywings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cooldowns/skywings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/reset/cooldowns/skywings.mcfunction", "color": "aqua"}}}]

    # Reset SkyWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.abilities.flame_breath 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.abilities.sky_surge 0

        ## Reset passives
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.jump 0
scoreboard players set @a[predicate=!eof:tribes/skywings] eof.passives.skyborn.regen 0

#endregion

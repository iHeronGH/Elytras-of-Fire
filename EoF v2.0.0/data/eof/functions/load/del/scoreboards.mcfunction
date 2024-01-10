#> eof:load/del/scoreboards
#
# Delete scoreboards from Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Passive objectives
scoreboard objectives remove eof.passives.dune_surfer.hunger
scoreboard objectives remove eof.passives.rejuvenation
scoreboard objectives remove eof.passives.sibling_bond
scoreboard objectives remove eof.passives.skyborn.jump
scoreboard objectives remove eof.passives.skyborn.regen
scoreboard objectives remove eof.passives.torrent
scoreboard objectives remove eof.passives.true_blessing

#endregion

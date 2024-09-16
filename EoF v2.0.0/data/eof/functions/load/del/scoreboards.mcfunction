#> eof:load/del/scoreboards
#
# Delete scoreboards from Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/del/scoreboards.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/del/scoreboards.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:del/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Ability objectives
scoreboard objectives remove eof.abilities.desert_storm
scoreboard objectives remove eof.abilities.frost_breath
scoreboard objectives remove eof.abilities.mud_swipe
scoreboard objectives remove eof.abilities.mudwing_flame_breath
scoreboard objectives remove eof.abilities.nightwing_flame_breath
scoreboard objectives remove eof.abilities.overgrowth
scoreboard objectives remove eof.abilities.premonition
scoreboard objectives remove eof.abilities.sandwing_flame_breath
scoreboard objectives remove eof.abilities.serrated_strike
scoreboard objectives remove eof.abilities.sky_surge
scoreboard objectives remove eof.abilities.skywing_flame_breath
scoreboard objectives remove eof.abilities.soul_sap
scoreboard objectives remove eof.abilities.tail_flail
scoreboard objectives remove eof.abilities.terrashock
scoreboard objectives remove eof.abilities.tidal_wave
scoreboard objectives remove eof.abilities.venom_shot

        ## Passive objectives
scoreboard objectives remove eof.passives.dune_surfer.hunger
scoreboard objectives remove eof.passives.rejuvenation
scoreboard objectives remove eof.passives.sibling_bond
scoreboard objectives remove eof.passives.skyborn.jump
scoreboard objectives remove eof.passives.skyborn.regen
scoreboard objectives remove eof.passives.torrent
scoreboard objectives remove eof.passives.true_blessing.regen
scoreboard objectives remove eof.passives.true_blessing.swim

#endregion

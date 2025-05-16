#> eof:load/gen/scoreboards/passive_variables
#
# Initialises passive ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/scoreboards/passive_variables.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_variables.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/scoreboards/passive_variables.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/scoreboards/passive_variables.mcfunction", "color": "aqua"}}}]

    # Dune Surfer
#define score_holder #eof.passives.dune_surfer.hunger.1 Sets the maximum hunger threshold for level 1 of Dune Surfer's hunger aspect.
scoreboard players set #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger 7

#define score_holder #cooldown Sets the cooldown for level 1 of Dune Surfer's hunger aspect.
scoreboard players set #cooldown eof.passives.dune_surfer.hunger 800

    # Sibling Bond
#define score_holder #eof.passives.sibling_bond.1 Sets the minimum player threshold for Sibling Bond 1.
scoreboard players set #eof.passives.sibling_bond.1 eof.passives.sibling_bond 2

    # Torrent
#define score_holder #eof.passives.torrent.1 Sets the maximum health threshold for Torrent 1.
scoreboard players set #eof.passives.torrent.1 eof.passives.torrent 14

#define score_holder #eof.passives.torrent.2 Sets the maximum health threshold for Torrent 2.
scoreboard players set #eof.passives.torrent.2 eof.passives.torrent 8

    # True Blessing
#define score_holder #cooldown Sets the maximum time for True Blessing's Regen aspect to reapply.
scoreboard players set #cooldown eof.passives.true_blessing.regen 300

#endregion

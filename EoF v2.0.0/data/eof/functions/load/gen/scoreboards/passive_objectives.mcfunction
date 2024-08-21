#> eof:load/gen/scoreboards/passive_objectives
#
# Initialises passive ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]

    # Passive objectives
#define objective eof.passives.dune_surfer.hunger Stores Dune Surfer's Hunger aspect scores.
scoreboard objectives add eof.passives.dune_surfer.hunger dummy

#define objective eof.passives.rejuvenation Stores Rejuvenation scores.
scoreboard objectives add eof.passives.rejuvenation dummy

#define objective eof.passives.sibling_bond Stores Sibling Bond scores.
scoreboard objectives add eof.passives.sibling_bond dummy

#define objective eof.passives.skyborn.jump Stores Skyborn's Jump aspect scores.
scoreboard objectives add eof.passives.skyborn.jump dummy

#define objective eof.passives.skyborn.regen Stores Skyborn's Regen aspect scores.
scoreboard objectives add eof.passives.skyborn.regen dummy

#define objective eof.passives.torrent Stores Torrent scores.
scoreboard objectives add eof.passives.torrent dummy

#define objective eof.passives.true_blessing Stores True Blessing scores.
scoreboard objectives add eof.passives.true_blessing dummy

#endregion

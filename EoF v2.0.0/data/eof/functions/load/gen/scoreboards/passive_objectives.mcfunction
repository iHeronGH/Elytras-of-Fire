#> eof:load/gen/scoreboards/passive_objectives
#
# Initialises passive ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/passive_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]

    # Passive Objectives
#define objective eof.passives.dune_surfer.hunger Stores Dune Surfer scores.
scoreboard objectives add eof.passives.dune_surfer.hunger dummy

#define objective eof.passives.rejuvenation Stores Rejuvenation scores.
scoreboard objectives add eof.passives.rejuvenation dummy

#define objective eof.passives.sibling_bond Stores Sibling Bond scores.
scoreboard objectives add eof.passives.sibling_bond dummy

#define objective eof.passives.skyborn.jump Stores Skyborn Jump scores.
scoreboard objectives add eof.passives.skyborn.jump dummy

#define objective eof.passives.skyborn.jump Stores Skyborn Regen scores.
scoreboard objectives add eof.passives.skyborn.regen dummy

#define objective eof.passives.torrent Stores Torrent scores.
scoreboard objectives add eof.passives.torrent dummy

#define objective eof.passives.true_blessing Stores True Blessing scores.
scoreboard objectives add eof.passives.true_blessing dummy

#endregion

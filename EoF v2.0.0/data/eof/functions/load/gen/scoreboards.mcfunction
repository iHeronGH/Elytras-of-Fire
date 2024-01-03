#> eof:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire.

#region
    # Scoreboards
        ## Passive Objectives
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

    # Scoreholders
        ## Global Vars
#define score_holder #eoflib.dlc.eof The load status of this datapack.
scoreboard players set #eoflib.dlc.eof eoflib.dlcs 1

        ## Passive Vars
function eof:load/gen/scoreboards/passives

#endregion

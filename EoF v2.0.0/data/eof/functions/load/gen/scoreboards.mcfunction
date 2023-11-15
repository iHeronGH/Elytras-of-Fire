#> eof:load/gen/scoreboards
#
# Generate scoreboards for Elytras of Fire.

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

    # Variables
        ## Global Variables
#define score_holder _eoflib.dlc.eof The load status of this datapack.
execute unless score _eoflib.dlc.eof eoflib.dlcs = _eoflib.dlc.eof eoflib.dlcs run scoreboard players set _eoflib.dlc.eof eoflib.dlcs 1

        ## Passive Vars
            ### Dune Surfer
#define score_holder #eof.passives.dune_surfer.hunger.1 Sets the maximum hunger threshold for Dune Surfer 1.
execute unless score #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger = #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger run scoreboard players set #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger 7

            ### Sibling Bond
#define score_holder #eof.passives.sibling_bond.1 Sets the minimum player threshold for Sibling Bond 1.
execute unless score #eof.passives.sibling_bond.1 eof.passives.sibling_bond = #eof.passives.sibling_bond.1 eof.passives.sibling_bond run scoreboard players set #eof.passives.sibling_bond.1 eof.passives.sibling_bond 2

            ### Torrent
#define score_holder #eof.passives.torrent.1 Sets the maximum health threshold for Torrent 1.
execute unless score #eof.passives.torrent.1 eof.passives.torrent = #eof.passives.torrent.1 eof.passives.torrent run scoreboard players set #eof.passives.torrent.1 eof.passives.torrent 14

#define score_holder #eof.passives.torrent.2 Sets the maximum health threshold for Torrent 2.
execute unless score #eof.passives.torrent.2 eof.passives.torrent = #eof.passives.torrent.2 eof.passives.torrent run scoreboard players set #eof.passives.torrent.2 eof.passives.torrent 8

#endregion

#> eof:load/gen/scoreboards/passives
#
# Initialises passive ability variables.

#region
    # Dune Surfer
#define score_holder #eof.passives.dune_surfer.hunger.1 Sets the maximum hunger threshold for Dune Surfer 1.
execute unless score #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger = #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger run scoreboard players set #eof.passives.dune_surfer.hunger.1 eof.passives.dune_surfer.hunger 7

    # Sibling Bond
#define score_holder #eof.passives.sibling_bond.1 Sets the minimum player threshold for Sibling Bond 1.
execute unless score #eof.passives.sibling_bond.1 eof.passives.sibling_bond = #eof.passives.sibling_bond.1 eof.passives.sibling_bond run scoreboard players set #eof.passives.sibling_bond.1 eof.passives.sibling_bond 2

    # Torrent
#define score_holder #eof.passives.torrent.1 Sets the maximum health threshold for Torrent 1.
execute unless score #eof.passives.torrent.1 eof.passives.torrent = #eof.passives.torrent.1 eof.passives.torrent run scoreboard players set #eof.passives.torrent.1 eof.passives.torrent 14

#define score_holder #eof.passives.torrent.2 Sets the maximum health threshold for Torrent 2.
execute unless score #eof.passives.torrent.2 eof.passives.torrent = #eof.passives.torrent.2 eof.passives.torrent run scoreboard players set #eof.passives.torrent.2 eof.passives.torrent 8

#endregion

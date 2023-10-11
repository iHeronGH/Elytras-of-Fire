#> eof:load/gen/scoreboards
#
# Generate scoreboards for Elytras of Fire.

#region
	# Scoreboards
		## Passive Objectives
	#define objective eof.passives.rejuvenation Stores Rejuvenation scores.
scoreboard objectives add eof.passives.rejuvenation dummy

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

		## Torrent Vars
	#define score_holder #eof.passives.torrent.1 Sets the maximum health threshold for Torrent 1.
execute unless score #eof.passives.torrent.1 eof.passives.torrent = #eof.passives.torrent.1 eof.passives.torrent run scoreboard players set #eof.passives.torrent.1 eof.passives.torrent 14

	#define score_holder #eof.passives.torrent.2 Sets the maximum health threshold for Torrent 2.
execute unless score #eof.passives.torrent.2 eof.passives.torrent = #eof.passives.torrent.2 eof.passives.torrent run scoreboard players set #eof.passives.torrent.2 eof.passives.torrent 8

#endregion

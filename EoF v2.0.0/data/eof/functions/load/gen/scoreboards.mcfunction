#> eof:load/gen/scoreboards
#
# Generates essential scoreboards for Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Ability objectives
function eof:load/gen/scoreboards/ability_objectives

        ## Passive objectives
function eof:load/gen/scoreboards/passive_objectives

    # Scoreholders
        ## Global variables
#define score_holder #eoflib.dlc.eof The load status of this datapack.
scoreboard players set #eoflib.dlc.eof eoflib.dlcs 1

        ## Ability variables
function eof:load/gen/scoreboards/ability_variables

        ## Passive variables
function eof:load/gen/scoreboards/passive_variables

#endregion

#> eof:load/gen/scoreboards/ability_variables
#
# Initialises active ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]

    # Premonition
#define score_holder #eof.abilities.premonition.cooldown Sets the maximum cooldown for Premonition.
execute unless score #eof.abilities.premonition.cooldown eof.abilities.premonition = #eof.abilities.premonition.cooldown eof.abilities.premonition run scoreboard players set #eof.abilities.premonition.cooldown eof.abilities.premonition 400

#define score_holder #eof.abilities.premonition.duration Sets the maximum duration for Premonition.
execute unless score #eof.abilities.premonition.duration eof.abilities.premonition = #eof.abilities.premonition.duration eof.abilities.premonition run scoreboard players set #eof.abilities.premonition.duration eof.abilities.premonition 200

#define score_holder #eof.abilities.premonition.duration_relative Calculates the scoreboard value for when the maximum duration for Premonition has occurred.
scoreboard players operation #eof.abilities.premonition.duration_relative eof.abilities.premonition = #eof.abilities.premonition.cooldown eof.abilities.premonition
scoreboard players operation #eof.abilities.premonition.duration_relative eof.abilities.premonition -= #eof.abilities.premonition.duration eof.abilities.premonition

#endregion

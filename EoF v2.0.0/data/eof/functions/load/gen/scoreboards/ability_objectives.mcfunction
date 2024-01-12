#> eof:load/gen/scoreboards/ability_objectives
#
# Initialises ability ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]

    # Ability objectives
#define objective eof.abilities.premonition Stores Premonition scores.
scoreboard objectives add eof.abilities.premonition dummy

#endregion

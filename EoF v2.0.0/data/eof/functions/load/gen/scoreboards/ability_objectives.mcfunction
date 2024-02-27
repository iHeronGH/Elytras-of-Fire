#> eof:load/gen/scoreboards/ability_objectives
#
# Initialises active ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]

    # Ability objectives
        ## Primary
#define objective eof.abilities.frost_breath Stores Frost Breath scores.
scoreboard objectives add eof.abilities.frost_breath dummy

#define objective eof.abilities.mudwing_flame_breath Stores MudWing Flame Breath scores.
scoreboard objectives add eof.abilities.mudwing_flame_breath dummy

#define objective eof.abilities.nightwing_flame_breath Stores NightWing Flame Breath scores.
scoreboard objectives add eof.abilities.nightwing_flame_breath dummy

#define objective eof.abilities.sandwing_flame_breath Stores SandWing Flame Breath scores.
scoreboard objectives add eof.abilities.sandwing_flame_breath dummy

#define objective eof.abilities.skywing_flame_breath Stores SkyWing Flame Breath scores.
scoreboard objectives add eof.abilities.skywing_flame_breath dummy

#define objective eof.abilities.venom_shot Stores Venom Shot scores.
scoreboard objectives add eof.abilities.venom_shot dummy

#define objective eof.abilities.tidal_wave Stores Tidal Wave scores.
scoreboard objectives add eof.abilities.tidal_wave dummy

        ## Secondary
#define objective eof.abilities.serrated_strike Stores Serrated Strike scores.
scoreboard objectives add eof.abilities.serrated_strike dummy

#define objective eof.abilities.terrashock Stores Terrashock scores.
scoreboard objectives add eof.abilities.terrashock dummy

#define objective eof.abilities.overgrowth Stores Overgrowth scores.
scoreboard objectives add eof.abilities.overgrowth dummy

#define objective eof.abilities.desert_storm Stores Desert Storm scores.
scoreboard objectives add eof.abilities.desert_storm dummy

#define objective eof.abilities.sky_surge Stores Sky Surge scores.
scoreboard objectives add eof.abilities.sky_surge dummy

        ## Tertiary
#define objective eof.abilities.mud_swipe Stores Mud Swipe scores.
scoreboard objectives add eof.abilities.mud_swipe dummy

#define objective eof.abilities.premonition Stores Premonition scores.
scoreboard objectives add eof.abilities.premonition dummy

#define objective eof.abilities.soul_sap Stores Soul Sap scores.
scoreboard objectives add eof.abilities.soul_sap dummy

#define objective eof.abilities.tail_flail Stores Tail Flail scores.
scoreboard objectives add eof.abilities.tail_flail dummy

#endregion

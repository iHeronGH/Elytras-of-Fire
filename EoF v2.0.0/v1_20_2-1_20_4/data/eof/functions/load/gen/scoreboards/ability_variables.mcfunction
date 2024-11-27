#> eof:load/gen/scoreboards/ability_variables
#
# Initialises active ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]

    # Ability variables
        ## Primary
            ### Frost Breath
#define score_holder #cooldown Sets the cooldown for Frost Breath.
execute store result score #cooldown eof.abilities.frost_breath run data get storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Frost Breath.
execute store result score #duration eof.abilities.frost_breath run data get storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data.ability_data.duration 20

            ### MudWing Flame Breath
#define score_holder #cooldown Sets the cooldown for MudWing Flame Breath.
execute store result score #cooldown eof.abilities.mudwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for MudWing Flame Breath.
execute store result score #duration eof.abilities.mudwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

            ### NightWing Flame Breath
#define score_holder #cooldown Sets the cooldown for NightWing Flame Breath.
execute store result score #cooldown eof.abilities.nightwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for NightWing Flame Breath.
execute store result score #duration eof.abilities.nightwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

            ### Venom Shot
#define score_holder #cooldown Sets the cooldown for Venom Shot.
execute store result score #cooldown eof.abilities.venom_shot run data get storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Venom Shot.
execute store result score #duration eof.abilities.venom_shot run data get storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data.ability_data.duration 20

            ### SandWing Flame Breath
#define score_holder #cooldown Sets the cooldown for SandWing Flame Breath.
execute store result score #cooldown eof.abilities.sandwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for SandWing Flame Breath.
execute store result score #duration eof.abilities.sandwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

            ### Tidal Wave
#define score_holder #cooldown Sets the cooldown for Tidal Wave.
execute store result score #cooldown eof.abilities.tidal_wave run data get storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Tidal Wave.
execute store result score #duration eof.abilities.tidal_wave run data get storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data.ability_data.duration 20

            ### SkyWing Flame Breath
#define score_holder #cooldown Sets the cooldown for SkyWing Flame Breath.
execute store result score #cooldown eof.abilities.skywing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for SkyWing Flame Breath.
execute store result score #duration eof.abilities.skywing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

        ## Secondary
            ### Serrated Strike
#define score_holder #cooldown Sets the cooldown for Serrated Strike.
execute store result score #cooldown eof.abilities.serrated_strike run data get storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Serrated Strike.
execute store result score #duration eof.abilities.serrated_strike run data get storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data.ability_data.duration 20

            ### Terrashock
#define score_holder #cooldown Sets the cooldown for Terrashock.
execute store result score #cooldown eof.abilities.terrashock run data get storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Terrashock.
execute store result score #duration eof.abilities.terrashock run data get storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data.ability_data.duration 20

            ### Overgrowth
#define score_holder #cooldown Sets the cooldown for Overgrowth.
execute store result score #cooldown eof.abilities.overgrowth run data get storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Overgrowth.
execute store result score #duration eof.abilities.overgrowth run data get storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data.ability_data.duration 20

            ### Desert Storm
#define score_holder #cooldown Sets the cooldown for Desert Storm.
execute store result score #cooldown eof.abilities.desert_storm run data get storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Desert Storm.
execute store result score #duration eof.abilities.desert_storm run data get storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data.ability_data.duration 20

            ### Sky Surge
#define score_holder #cooldown Sets the cooldown for Sky Surge.
execute store result score #cooldown eof.abilities.sky_surge run data get storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Sky Surge.
execute store result score #duration eof.abilities.sky_surge run data get storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data.ability_data.duration 20

        ## Tertiary
            ### Mud Swipe
#define score_holder #cooldown Sets the cooldown for Mud Swipe.
execute store result score #cooldown eof.abilities.mud_swipe run data get storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Mud Swipe.
execute store result score #duration eof.abilities.mud_swipe run data get storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data.ability_data.duration 20

            ### Premonition
#define score_holder #cooldown Sets the cooldown for Premonition.
execute store result score #cooldown eof.abilities.premonition.cooldown run data get storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Premonition.
execute store result score #duration eof.abilities.premonition.duration run data get storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data.ability_data.duration 20

            ### Soul Sap
#define score_holder #cooldown Sets the cooldown for Soul Sap.
execute store result score #cooldown eof.abilities.soul_sap run data get storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Soul Sap.
execute store result score #duration eof.abilities.soul_sap run data get storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data.ability_data.duration 20

            ### Tail Flail
#define score_holder #cooldown Sets the cooldown for Tail Flail.
execute store result score #cooldown eof.abilities.tail_flail run data get storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Tail Flail.
execute store result score #duration eof.abilities.tail_flail run data get storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data.ability_data.duration 20

#endregion

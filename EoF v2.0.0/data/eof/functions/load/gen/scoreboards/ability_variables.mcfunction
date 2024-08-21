#> eof:load/gen/scoreboards/ability_variables
#
# Initialises active ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:scoreboards/ability_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]

    # Ability variables
        ## Primary
            ### Frost Breath
#define score_holder #eof.abilities.frost_breath.cooldown Sets the cooldown for Frost Breath.
execute store result score #eof.abilities.frost_breath.cooldown eof.abilities.frost_breath run data get storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.frost_breath.duration Sets the duration for Frost Breath.
execute store result score #eof.abilities.frost_breath.duration eof.abilities.frost_breath run data get storage eoflib:config eof.Abilities[].IceWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.frost_breath.duration_end Calculates the scoreboard value for when the maximum duration for Frost Breath has occurred.
scoreboard players operation #eof.abilities.frost_breath.duration_end eof.abilities.frost_breath = #eof.abilities.frost_breath.cooldown eof.abilities.frost_breath
scoreboard players operation #eof.abilities.frost_breath.duration_end eof.abilities.frost_breath -= #eof.abilities.frost_breath.duration eof.abilities.frost_breath

            ### MudWing Flame Breath
#define score_holder #eof.abilities.mudwing_flame_breath.cooldown Sets the cooldown for MudWing Flame Breath.
execute store result score #eof.abilities.mudwing_flame_breath.cooldown eof.abilities.mudwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.mudwing_flame_breath.duration Sets the duration for MudWing Flame Breath.
execute store result score #eof.abilities.mudwing_flame_breath.duration eof.abilities.mudwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.flame_breath.duration_end Calculates the scoreboard value for when the maximum duration for MudWing Flame Breath has occurred.
scoreboard players operation #eof.abilities.mudwing_flame_breath.duration_end eof.abilities.mudwing_flame_breath = #eof.abilities.mudwing_flame_breath.cooldown eof.abilities.mudwing_flame_breath
scoreboard players operation #eof.abilities.mudwing_flame_breath.duration_end eof.abilities.mudwing_flame_breath -= #eof.abilities.mudwing_flame_breath.duration eof.abilities.mudwing_flame_breath

            ### NightWing Flame Breath
#define score_holder #eof.abilities.nightwing_flame_breath.cooldown Sets the cooldown for NightWing Flame Breath.
execute store result score #eof.abilities.nightwing_flame_breath.cooldown eof.abilities.nightwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.nightwing_flame_breath.duration Sets the duration for NightWing Flame Breath.
execute store result score #eof.abilities.nightwing_flame_breath.duration eof.abilities.nightwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.flame_breath.duration_end Calculates the scoreboard value for when the maximum duration for NightWing Flame Breath has occurred.
scoreboard players operation #eof.abilities.nightwing_flame_breath.duration_end eof.abilities.nightwing_flame_breath = #eof.abilities.nightwing_flame_breath.cooldown eof.abilities.nightwing_flame_breath
scoreboard players operation #eof.abilities.nightwing_flame_breath.duration_end eof.abilities.nightwing_flame_breath -= #eof.abilities.nightwing_flame_breath.duration eof.abilities.nightwing_flame_breath

            ### Venom Shot
#define score_holder #eof.abilities.venom_shot.cooldown Sets the cooldown for Venom Shot.
execute store result score #eof.abilities.venom_shot.cooldown eof.abilities.venom_shot run data get storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.venom_shot.duration Sets the duration for Venom Shot.
execute store result score #eof.abilities.venom_shot.duration eof.abilities.venom_shot run data get storage eoflib:config eof.Abilities[].RainWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.venom_shot.duration_end Calculates the scoreboard value for when the maximum duration for Venom Shot has occurred.
scoreboard players operation #eof.abilities.venom_shot.duration_end eof.abilities.venom_shot = #eof.abilities.venom_shot.cooldown eof.abilities.venom_shot
scoreboard players operation #eof.abilities.venom_shot.duration_end eof.abilities.venom_shot -= #eof.abilities.venom_shot.duration eof.abilities.venom_shot

            ### SandWing Flame Breath
#define score_holder #eof.abilities.sandwing_flame_breath.cooldown Sets the cooldown for SandWing Flame Breath.
execute store result score #eof.abilities.sandwing_flame_breath.cooldown eof.abilities.sandwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.sandwing_flame_breath.duration Sets the duration for SandWing Flame Breath.
execute store result score #eof.abilities.sandwing_flame_breath.duration eof.abilities.sandwing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.flame_breath.duration_end Calculates the scoreboard value for when the maximum duration for SandWing Flame Breath has occurred.
scoreboard players operation #eof.abilities.sandwing_flame_breath.duration_end eof.abilities.sandwing_flame_breath = #eof.abilities.sandwing_flame_breath.cooldown eof.abilities.sandwing_flame_breath
scoreboard players operation #eof.abilities.sandwing_flame_breath.duration_end eof.abilities.sandwing_flame_breath -= #eof.abilities.sandwing_flame_breath.duration eof.abilities.sandwing_flame_breath

            ### Tidal Wave
#define score_holder #eof.abilities.tidal_wave.cooldown Sets the cooldown for Tidal Wave.
execute store result score #eof.abilities.tidal_wave.cooldown eof.abilities.tidal_wave run data get storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.tidal_wave.duration Sets the duration for Tidal Wave.
execute store result score #eof.abilities.tidal_wave.duration eof.abilities.tidal_wave run data get storage eoflib:config eof.Abilities[].SeaWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.tidal_wave.duration_end Calculates the scoreboard value for when the maximum duration for Tidal Wave has occurred.
scoreboard players operation #eof.abilities.tidal_wave.duration_end eof.abilities.tidal_wave = #eof.abilities.tidal_wave.cooldown eof.abilities.tidal_wave
scoreboard players operation #eof.abilities.tidal_wave.duration_end eof.abilities.tidal_wave -= #eof.abilities.tidal_wave.duration eof.abilities.tidal_wave

            ### SkyWing Flame Breath
#define score_holder #eof.abilities.skywing_flame_breath.cooldown Sets the cooldown for SkyWing Flame Breath.
execute store result score #eof.abilities.skywing_flame_breath.cooldown eof.abilities.skywing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.skywing_flame_breath.duration Sets the duration for SkyWing Flame Breath.
execute store result score #eof.abilities.skywing_flame_breath.duration eof.abilities.skywing_flame_breath run data get storage eoflib:config eof.Abilities[].MudWings.primary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.flame_breath.duration_end Calculates the scoreboard value for when the maximum duration for SkyWing Flame Breath has occurred.
scoreboard players operation #eof.abilities.skywing_flame_breath.duration_end eof.abilities.skywing_flame_breath = #eof.abilities.skywing_flame_breath.cooldown eof.abilities.skywing_flame_breath
scoreboard players operation #eof.abilities.skywing_flame_breath.duration_end eof.abilities.skywing_flame_breath -= #eof.abilities.skywing_flame_breath.duration eof.abilities.skywing_flame_breath

        ## Secondary
            ### Serrated Strike
#define score_holder #eof.abilities.serrated_strike.cooldown Sets the cooldown for Serrated Strike.
execute store result score #eof.abilities.serrated_strike.cooldown eof.abilities.serrated_strike run data get storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.serrated_strike.duration Sets the duration for Serrated Strike.
execute store result score #eof.abilities.serrated_strike.duration eof.abilities.serrated_strike run data get storage eoflib:config eof.Abilities[].IceWings.secondary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.serrated_strike.duration_end Calculates the scoreboard value for when the maximum duration for Serrated Strike has occurred.
scoreboard players operation #eof.abilities.serrated_strike.duration_end eof.abilities.serrated_strike = #eof.abilities.serrated_strike.cooldown eof.abilities.serrated_strike
scoreboard players operation #eof.abilities.serrated_strike.duration_end eof.abilities.serrated_strike -= #eof.abilities.serrated_strike.duration eof.abilities.serrated_strike

            ### Terrashock
#define score_holder #eof.abilities.terrashock.cooldown Sets the cooldown for Terrashock.
execute store result score #eof.abilities.terrashock.cooldown eof.abilities.terrashock run data get storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.terrashock.duration Sets the duration for Terrashock.
execute store result score #eof.abilities.terrashock.duration eof.abilities.terrashock run data get storage eoflib:config eof.Abilities[].MudWings.secondary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.terrashock.duration_end Calculates the scoreboard value for when the maximum duration for Terrashock has occurred.
scoreboard players operation #eof.abilities.terrashock.duration_end eof.abilities.terrashock = #eof.abilities.terrashock.cooldown eof.abilities.terrashock
scoreboard players operation #eof.abilities.terrashock.duration_end eof.abilities.terrashock -= #eof.abilities.terrashock.duration eof.abilities.terrashock

            ### Overgrowth
#define score_holder #eof.abilities.overgrowth.cooldown Sets the cooldown for Overgrowth.
execute store result score #eof.abilities.overgrowth.cooldown eof.abilities.overgrowth run data get storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.overgrowth.duration Sets the duration for Overgrowth.
execute store result score #eof.abilities.overgrowth.duration eof.abilities.overgrowth run data get storage eoflib:config eof.Abilities[].RainWings.secondary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.overgrowth.duration_end Calculates the scoreboard value for when the maximum duration for Overgrowth has occurred.
scoreboard players operation #eof.abilities.overgrowth.duration_end eof.abilities.overgrowth = #eof.abilities.overgrowth.cooldown eof.abilities.overgrowth
scoreboard players operation #eof.abilities.overgrowth.duration_end eof.abilities.overgrowth -= #eof.abilities.overgrowth.duration eof.abilities.overgrowth

            ### Desert Storm
#define score_holder #eof.abilities.desert_storm.cooldown Sets the cooldown for Desert Storm.
execute store result score #eof.abilities.desert_storm.cooldown eof.abilities.desert_storm run data get storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.desert_storm.duration Sets the duration for Desert Storm.
execute store result score #eof.abilities.desert_storm.duration eof.abilities.desert_storm run data get storage eoflib:config eof.Abilities[].SandWings.secondary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.desert_storm.duration_end Calculates the scoreboard value for when the maximum duration for Desert Storm has occurred.
scoreboard players operation #eof.abilities.desert_storm.duration_end eof.abilities.desert_storm = #eof.abilities.desert_storm.cooldown eof.abilities.desert_storm
scoreboard players operation #eof.abilities.desert_storm.duration_end eof.abilities.desert_storm -= #eof.abilities.desert_storm.duration eof.abilities.desert_storm

            ### Sky Surge
#define score_holder #eof.abilities.sky_surge.cooldown Sets the cooldown for Sky Surge.
execute store result score #eof.abilities.sky_surge.cooldown eof.abilities.sky_surge run data get storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.sky_surge.duration Sets the duration for Sky Surge.
execute store result score #eof.abilities.sky_surge.duration eof.abilities.sky_surge run data get storage eoflib:config eof.Abilities[].SkyWings.secondary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.sky_surge.duration_end Calculates the scoreboard value for when the maximum duration for Sky Surge has occurred.
scoreboard players operation #eof.abilities.sky_surge.duration_end eof.abilities.sky_surge = #eof.abilities.sky_surge.cooldown eof.abilities.sky_surge
scoreboard players operation #eof.abilities.sky_surge.duration_end eof.abilities.sky_surge -= #eof.abilities.sky_surge.duration eof.abilities.sky_surge

        ## Tertiary
            ### Mud Swipe
#define score_holder #eof.abilities.mud_swipe.cooldown Sets the cooldown for Mud Swipe.
execute store result score #eof.abilities.mud_swipe.cooldown eof.abilities.mud_swipe run data get storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.mud_swipe.duration Sets the duration for Mud Swipe.
execute store result score #eof.abilities.mud_swipe.duration eof.abilities.mud_swipe run data get storage eoflib:config eof.Abilities[].MudWings.tertiary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.mud_swipe.duration_end Calculates the scoreboard value for when the maximum duration for Mud Swipe has occurred.
scoreboard players operation #eof.abilities.mud_swipe.duration_end eof.abilities.mud_swipe = #eof.abilities.mud_swipe.cooldown eof.abilities.mud_swipe
scoreboard players operation #eof.abilities.mud_swipe.duration_end eof.abilities.mud_swipe -= #eof.abilities.mud_swipe.duration eof.abilities.mud_swipe

            ### Premonition
#define score_holder #eof.abilities.premonition.cooldown Sets the cooldown for Premonition.
execute store result score #eof.abilities.premonition.cooldown eof.abilities.premonition run data get storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.premonition.duration Sets the duration for Premonition.
execute store result score #eof.abilities.premonition.duration eof.abilities.premonition run data get storage eoflib:config eof.Abilities[].NightWings.tertiary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.premonition.duration_end Calculates the scoreboard value for when the maximum duration for Premonition has occurred.
scoreboard players operation #eof.abilities.premonition.duration_end eof.abilities.premonition = #eof.abilities.premonition.cooldown eof.abilities.premonition
scoreboard players operation #eof.abilities.premonition.duration_end eof.abilities.premonition -= #eof.abilities.premonition.duration eof.abilities.premonition

            ### Soul Sap
#define score_holder #eof.abilities.soul_sap.cooldown Sets the cooldown for Soul Sap.
execute store result score #eof.abilities.soul_sap.cooldown eof.abilities.soul_sap run data get storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.soul_sap.duration Sets the duration for Soul Sap.
execute store result score #eof.abilities.soul_sap.duration eof.abilities.soul_sap run data get storage eoflib:config eof.Abilities[].RainWings.tertiary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.soul_sap.duration_end Calculates the scoreboard value for when the maximum duration for Soul Sap has occurred.
scoreboard players operation #eof.abilities.soul_sap.duration_end eof.abilities.soul_sap = #eof.abilities.soul_sap.cooldown eof.abilities.soul_sap
scoreboard players operation #eof.abilities.soul_sap.duration_end eof.abilities.soul_sap -= #eof.abilities.soul_sap.duration eof.abilities.soul_sap

            ### Tail Flail
#define score_holder #eof.abilities.tail_flail.cooldown Sets the cooldown for Tail Flail.
execute store result score #eof.abilities.tail_flail.cooldown eof.abilities.tail_flail run data get storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #eof.abilities.tail_flail.duration Sets the duration for Tail Flail.
execute store result score #eof.abilities.tail_flail.duration eof.abilities.tail_flail run data get storage eoflib:config eof.Abilities[].SeaWings.tertiary[0].eof_data.ability_data.duration 20

#define score_holder #eof.abilities.tail_flail.duration_end Calculates the scoreboard value for when the maximum duration for Tail Flail has occurred.
scoreboard players operation #eof.abilities.tail_flail.duration_end eof.abilities.tail_flail = #eof.abilities.tail_flail.cooldown eof.abilities.tail_flail
scoreboard players operation #eof.abilities.tail_flail.duration_end eof.abilities.tail_flail -= #eof.abilities.tail_flail.duration eof.abilities.tail_flail

#endregion

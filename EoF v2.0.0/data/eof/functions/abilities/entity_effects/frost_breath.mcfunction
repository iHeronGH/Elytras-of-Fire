#> eof:abilities/entity_effects/frost_breath
#
# Activate Frost Breath effects.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "eof:abilities/effects/icewings/frost_breath.mcf"]

    # Enemy effects
damage @s 4 generic
effect give @s mining_fatigue 5 1 true
effect give @s slowness 5 1 true
tag @s add eof.effects.frostbite.1

#endregion

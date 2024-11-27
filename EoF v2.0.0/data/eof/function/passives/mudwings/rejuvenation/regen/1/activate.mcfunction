#> eof:passives/mudwings/rejuvenation/regen/1/activate
#
# Activate Rejuvenation when successfully charged.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:1/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eof:passives/mudwings/rejuvenation/regen/1/activate.mcfunction", "color": "aqua"}}}]

    # Announce activation
title @s actionbar {"text": "Rejuvenation charged!", "color": "red"}

    # Effect Entities
effect give @s regeneration 300 0 true
effect give @s speed 300 0 true

    # Play Particles
particle cloud ~ ~1.2 ~ 0 0.3 0 0.2 20 force @a[distance=..30]

    # Reset
        ## Correct Tags
tag @s remove eof.passives.rejuvenation.regen.init
tag @s add eof.passives.rejuvenation.regen.active

        ## Initiate Cooldown
schedule function eof:passives/mudwings/rejuvenation/regen/1/cooldown 1t replace

#endregion

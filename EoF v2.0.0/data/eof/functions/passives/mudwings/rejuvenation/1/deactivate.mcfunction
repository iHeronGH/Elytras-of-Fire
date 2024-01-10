#> eof:passives/mudwings/rejuvenation/1/deactivate
#
# Deactivate Rejuvenation due to either a failed charge or successful cooldown.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/deactivate.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/mudwings/rejuvenation/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
execute if entity @s[tag=!eof.passives.rejuvenation.active] run title @s actionbar {"text": "Rejuvenation charge failed!", "color": "red"}
execute if entity @s[tag=eof.passives.rejuvenation.active] run title @s actionbar {"text": "Rejuvenation charge ready!", "color": "red"}

    # Remove Tags
tag @s remove eof.passives.rejuvenation.init
tag @s remove eof.passives.rejuvenation.active

    # Reset Score
scoreboard players set @s eof.passives.rejuvenation 0

#endregion

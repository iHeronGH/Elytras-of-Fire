#> eof:passives/seawings/true_blessing/1/deactivate
#
# Deactivate True Blessing due to either a failed charge or successful cooldown.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/true_blessing/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Announce deactivation
execute if entity @s[tag=!eof.passives.true_blessing.active] run title @s actionbar {"text":"True Blessing charge failed!", "color":"dark_aqua"}
execute if entity @s[tag=eof.passives.true_blessing.active] run title @s actionbar {"text":"True Blessing charge ready!", "color":"dark_aqua"}

    # Resolve tags
tag @s remove eof.passives.true_blessing.init
tag @s remove eof.passives.true_blessing.active

    # Reset scores
scoreboard players set @s eof.passives.true_blessing 0

#endregion

#> eof:abilities/activate/seawings/oceans_blessing
#
# Activate SeaWing ability Ocean's Blessing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/oceans_blessing.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:oceans_blessing.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/oceans_blessing.mcfunction", "color": "aqua"}}}]

    # Activate Ocean's Blessing


    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/oceans_blessing

#endregion

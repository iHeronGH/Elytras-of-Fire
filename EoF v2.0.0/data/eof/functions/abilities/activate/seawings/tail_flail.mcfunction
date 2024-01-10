#> eof:abilities/activate/seawings/tail_flail
#
# Activate SeaWing ability Tail Flail.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:tail_flail.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tail_flail.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:tail_flail.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tail_flail.mcfunction", "color": "aqua"}}}]

    # Activate Tail Flail


    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tail_flail

#endregion

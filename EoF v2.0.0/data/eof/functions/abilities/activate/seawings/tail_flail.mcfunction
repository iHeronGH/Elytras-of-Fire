#> eof:abilities/activate/seawings/tail_flail
#
# Activate SeaWing ability Tail Flail.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tail_flail.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tail_flail.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:seawings/tail_flail.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/abilities/activate/seawings/tail_flail.mcfunction", "color": "aqua"}}}]

    # Activate Tail Flail
        ## Announce activation
title @s actionbar {"text": "Tail Flail activated!", "color": "aqua"}

        ## User effects

        ## Enemy effects
execute unless entity @s[predicate=eof:passives/torrent/2] run effect give @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent, distance=..7] blindness 4 0 true
execute if entity @s[predicate=eof:passives/torrent/2] run effect give @e[sort=nearest, limit=1, type=!#eoflib:unaffected, predicate=eoflib:damage/recent] blindness 7 0 true

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/tail_flail

#endregion

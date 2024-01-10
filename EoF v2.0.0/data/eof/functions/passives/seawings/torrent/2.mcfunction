#> eof:passives/seawings/torrent/2
#
# Grant effects based on the SeaWing passive ability Torrent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:2.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/seawings/torrent/2.mcfunction", "color": "aqua"}}}]

    # Torrent 2 effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/seawings, predicate=eof:passives/torrent/2] strength 1 1 true

#endregion

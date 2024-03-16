#> eof:load/hw
#
# Hello world!

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:load/hw.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/load/hw.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:load/hw.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/load/hw.mcfunction", "color": "aqua"}}}]

    # Increment available DLCs
scoreboard players add #eoflib.available_dlcs eoflib.dlcs 1

    # Baseline
tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Elytras ", "color": "red"}, {"text": "of ", "color": "gold"}, {"text": "Fire", "color": "red"}, {"text": " detected!", "color": "gray"}]

#endregion

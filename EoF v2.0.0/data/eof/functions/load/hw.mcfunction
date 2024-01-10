#> eof:load/hw
#
# Hello world!

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:hw.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/hw.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:hw.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/load/hw.mcfunction", "color": "aqua"}}}]

    # Increment available DLCs
scoreboard players operation #eoflib.available_dlcs eoflib.dlcs += #eoflib.dlc.eof eoflib.dlcs

    # Baseline
execute if score #eoflib.dlc.eof eoflib.dlcs matches 1 run tellraw @a [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Elytras ", "color": "red"}, {"text": "of ", "color": "gold"}, {"text": "Fire", "color": "red"}, {"text": " detected!", "color": "gray"}]

#endregion

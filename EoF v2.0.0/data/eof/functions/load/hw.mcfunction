#> eof:load/hw
#
# Hello world!

#region
    # Increment available DLCs
scoreboard players operation #eoflib.available_dlcs eoflib.dlcs += #eoflib.dlc.eof eoflib.dlcs

    # Baseline
execute if score #eoflib.dlc.eof eoflib.dlcs matches 1 run tellraw @a [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Elytras ", "color": "red"}, {"text": "of ", "color": "gold"}, {"text": "Fire", "color": "red"}, {"text": " detected!", "color": "gray"}]

#endregion

#> eof:uninstall
#
# Uninstall Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:functions/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/uninstall.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:functions/uninstall.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/uninstall.mcfunction", "color": "aqua"}}}]

    # Disable datapack
datapack disable "file/EoF v2.0.0"

    # Decrease available DLC counter
scoreboard players remove #eoflib.active_dlcs eoflib.dlcs 1

    # Post-delete message
tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Elytras of Fire has been uninstalled.", "color": "gray"}]

#endregion

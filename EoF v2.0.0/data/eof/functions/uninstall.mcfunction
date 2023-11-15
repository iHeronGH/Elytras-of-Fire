#> eof:uninstall
#
# Uninstall Elytras of Fire.

#region

    # Disable datapack
datapack disable "file/EoF v2.0.0"

    # Post-delete message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] Elytras of Fire has been uninstalled.", "color": "gray"}]

#endregion

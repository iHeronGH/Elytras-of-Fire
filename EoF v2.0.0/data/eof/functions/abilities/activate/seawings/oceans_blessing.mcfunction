#> eof:abilities/activate/seawings/oceans_blessing
#
# Activate SeaWing ability Ocean's Blessing.

#region
    # Activate Ocean's Blessing
tellraw @s {"text": "eof:abilities/activate/seawings/oceans_blessing.mcf", "color": "dark_aqua"}

    # Revoke advancement
advancement revoke @s only eof:abilities/seawings/oceans_blessing

#endregion

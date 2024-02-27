#> eof:passives/icewings/cryoenergy/2
#
# Grant effects based on the IceWing passive ability Cryoenergy.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cryoenergy/2.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eof/functions/passives/icewings/cryoenergy/2.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:cryoenergy/2.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eof/functions/passives/icewings/cryoenergy/2.mcfunction", "color": "aqua"}}}]

    # Cryoenergy 2 Effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/icewings, predicate=eof:passives/cryoenergy/2] speed 1 2 true

#endregion

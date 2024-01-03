#> eof:passives/nightwings/base
#
# Grants base NightWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] strength 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] night_vision 12 0 true

    # Check for Gloom Cloak effects
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/1] run function eof:passives/nightwings/gloom_cloak/1
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings, predicate=eof:passives/gloom_cloak/2] run function eof:passives/nightwings/gloom_cloak/2
    
    # Loop if there are any NightWings
# execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/nightwings] run schedule function eof:passives/nightwings/base 1t replace

#endregion

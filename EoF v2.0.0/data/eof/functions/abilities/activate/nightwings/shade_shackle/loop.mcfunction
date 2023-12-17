#> eof:abilities/activate/nightwings/shade_shackle/loop
#
# Loop Shade Shackle effects.

#region
    # Run Shade Shackle
        ## User effects
effect give @a[tag=eof.nightwings.shade_shackle] slowness 1 2 true

        ## Enemy effects
execute at @a[tag=eof.nightwings.shade_shackle, predicate=eof:tribes/nightwings] run effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/nightwings, distance=0.1..6] slowness 2 2 true
execute at @a[tag=eof.nightwings.shade_shackle, predicate=eof:tribes/nightwings] run effect give @e[type=!#eoflib:unaffected, predicate=!eof:tribes/nightwings, distance=6..10] slowness 1 1 true

    # Loop
execute if entity @a[tag=eof.nightwings.shade_shackle, predicate=eoflib:mainhand/ability/secondary, predicate=eof:tribes/nightwings] run schedule function eof:abilities/activate/nightwings/shade_shackle/loop 1t

#endregion

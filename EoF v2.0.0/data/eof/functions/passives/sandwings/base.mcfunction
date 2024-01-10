#> eof:passives/sandwings/base
#
# Grants base SandWing effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eof:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eof/functions/passives/sandwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] speed 1 0 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/sandwings] strength 1 0 true

    # Check for Dune Surfer effectsss
        ## Desert block aspect
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/sandwings, predicate=eof:passives/dune_surfer/desert/1] run function eof:passives/sandwings/dune_surfer/desert/1

        ## Hunger aspect
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.dune_surfer.hunger, predicate=eof:tribes/sandwings, predicate=eof:passives/dune_surfer/hunger/1] run function eof:passives/sandwings/dune_surfer/hunger/1/activate

#endregion

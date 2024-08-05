#> eof:passives/mudwings/base
#
# Grants base MudWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eof:passives/mudwings/base.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eof:passives/mudwings/base.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eof:mudwings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eof:passives/mudwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] strength 1 1 true
effect give @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 1 0 true
effect give @a[tag=eoflib.atts, tag=eof.passives.rejuvenation.regen.active, predicate=eof:tribes/mudwings, predicate=eoflib:location/submerged_in_water] speed 3 1 true

    # Check for Rejuvenation effects
        ## Regen
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.regen.init, tag=!eof.passives.rejuvenation.regen.active, predicate=eof:tribes/mudwings, predicate=eof:passives/rejuvenation/regen/1] run function eof:passives/mudwings/rejuvenation/regen/init

        ## Amphib
            ### Activate
execute if entity @a[tag=eoflib.atts, tag=!eof.passives.rejuvenation.amphib.active, predicate=eof:tribes/mudwings, predicate=eof:passives/rejuvenation/amphib/1] run function eof:passives/mudwings/rejuvenation/amphib/1/activate

            ### Deactivate
execute if entity @a[tag=eof.passives.rejuvenation.amphib.active, predicate=!eof:passives/rejuvenation/amphib/1] run function eof:passives/mudwings/rejuvenation/amphib/1/deactivate

    # Check for Sibling Bond effects
execute as @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] at @s store result score @s eof.passives.sibling_bond if entity @a[predicate=eof:tribes/mudwings, distance=0.1..10]
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings, predicate=eof:passives/sibling_bond/1] run function eof:passives/mudwings/sibling_bond/1

    # Loop if there are MudWings
execute if entity @a[tag=eoflib.atts, predicate=eof:tribes/mudwings] run schedule function eof:passives/mudwings/base 1t

#endregion

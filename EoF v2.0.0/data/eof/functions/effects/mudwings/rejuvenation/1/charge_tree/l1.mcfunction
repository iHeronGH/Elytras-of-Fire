#> eof:effects/mudwings/rejuvenation/1/charge_tree/l1
#
# Split charge actionbar message into separate functions

#region
    # Charge Tree Layer 1
execute if score @s eof.passives.rejuvenation matches 1..720 run function eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_0
execute if score @s eof.passives.rejuvenation matches 721..1440 run function eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_1
execute if score @s eof.passives.rejuvenation matches 1441..2160 run function eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_2
execute if score @s eof.passives.rejuvenation matches 2161..2880 run function eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_3
execute if score @s eof.passives.rejuvenation matches 2881..3600 run function eof:effects/mudwings/rejuvenation/1/charge_tree/l1/l0_4

#endregion

#> effect:revival_sickness/second
#
# 復活酔い毎秒処理
#
# @within function player:one_second

scoreboard players remove @s RevivalSicknessTimer 1
execute if score @s RevivalSicknessTimer matches 0 run return run function effect:revival_sickness/cure

# 採掘不可にする
effect give @s minecraft:mining_fatigue infinite 255
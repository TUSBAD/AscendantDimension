#> effect:revival_sickness/cure
#
# 復活酔い解除処理
#
# @within function effect:revival_sickness/second


scoreboard players reset @s RevivalSicknessTimer
effect clear @s mining_fatigue

# 演出
function makeup:effect/revival_sickness/cure
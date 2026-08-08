#> effect:doom/apply.m
#
# 死の宣告を付与する
#
# @within function effect:invisible/

# 効果中なら中断
execute if score @s Doom matches 1..11 run return fail

$scoreboard players set @s Doom $(doom)

# 演出
function makeup:effect/doom/apply

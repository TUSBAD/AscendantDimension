#> effect:doom/apply
#
# 死の宣告を付与する
#
# @within function effect:invisible/

# 効果中なら中断
execute if score @s Doom matches 1..11 run return fail

execute if score #Difficulty Difficulty matches 1..4 run scoreboard players set @s Doom 11
execute if score #Difficulty Difficulty matches 5 run scoreboard players set @s Doom 6

# 演出
function makeup:effect/doom/apply

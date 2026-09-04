#> effect:doom/apply_super
#
# 強化死の宣告
#
# @within function effect:too_bad_effect

# 効果中なら中断
execute if score @s Doom matches 1..13 run return fail

function effect:doom/apply
scoreboard players set _ _ 10
scoreboard players operation @s Doom < _ _

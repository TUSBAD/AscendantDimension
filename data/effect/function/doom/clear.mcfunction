#> effect:doom/clear
#
# 透明化がかかっている場合、それに応じて特殊効果をかける
#
# 死の宣告を解除する

function makeup:effect/doom/clear
scoreboard players reset @s Doom

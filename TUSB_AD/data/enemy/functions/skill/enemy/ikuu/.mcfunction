#> enemy:skill/enemy/ikuu/
#
# tag Ikuu
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

execute if score @s Random matches 1 run function enemy:skill/enemy/ikuu/transition_another_dimension

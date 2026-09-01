#> enemy:skill/enemy/magma/
#
# tag Magma
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

execute if score @s Random matches 1..2 run function enemy:skill/enemy/magma/magma_explode
execute if score @s Random matches 3..5 run function enemy:skill/enemy/magma/escape

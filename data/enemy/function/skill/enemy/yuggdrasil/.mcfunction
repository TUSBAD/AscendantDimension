#> enemy:skill/enemy/yuggdrasil/
#
# tag Yuggdrasil
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# 天沼矛
# 天地開闢

execute if score @s Random matches 1 run function enemy:skill/enemy/yuggdrasil/amatsukazuchi
execute if score @s Random matches 2 run function enemy:skill/enemy/yuggdrasil/the_creation_of_the_universe

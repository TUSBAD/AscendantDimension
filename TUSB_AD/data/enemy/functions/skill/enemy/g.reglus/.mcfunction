#> enemy:skill/enemy/g.reglus/
#
# tag G.Reglus
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,5]
function api:dice/score

# 塵も残さず消してあげる
# 虚構の底へ沈んじゃえ！
# 泣き喚いてもやめたげない！

execute if score @s Random matches 1 run function enemy:skill/enemy/g.reglus/instant_death
execute if score @s Random matches 2 run function enemy:skill/enemy/g.reglus/reduce_mp
execute if score @s Random matches 3 run function enemy:skill/enemy/g.reglus/fatal_death

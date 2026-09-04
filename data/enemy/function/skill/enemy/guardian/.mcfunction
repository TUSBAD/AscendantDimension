#> enemy:skill/enemy/guardian/
#
# team guardian
#
# @within function enemy:skill/enemy/g.altair/reduce_mp

# 乱数を取得
data modify storage math: in set value [1,8]
function api:dice/score

execute if score @s Random matches 1 run function enemy:skill/enemy/guardian/summon

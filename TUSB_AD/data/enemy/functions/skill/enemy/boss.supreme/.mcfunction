#> enemy:skill/enemy/boss.supreme/
#
# tag Boss.Supreme 桃発光
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# トランセンデンスソウル
execute if score @s Random matches 1 run function enemy:skill/enemy/boss.supreme/transcendence_soul

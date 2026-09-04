#> enemy:skill/enemy/another/
#
# tag Another
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# トライセンデンスソウル
execute if score @s Random matches 1 run function enemy:skill/enemy/another/trisendence_soul

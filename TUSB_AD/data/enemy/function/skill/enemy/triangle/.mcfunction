#> enemy:skill/enemy/triangle/
#
# tag Triangle
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,3]
function api:dice/score

# プロミネンス
# サモン・トライアングル

execute if score @s Random matches 1 run function enemy:skill/enemy/triangle/prominence
execute if score @s Random matches 2 run function enemy:skill/enemy/triangle/summon

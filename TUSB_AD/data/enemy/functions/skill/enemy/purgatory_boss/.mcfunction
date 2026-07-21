#> enemy:skill/enemy/purgatory_boss/
#
# tag RengokuBoss
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

execute if score @s Random matches 1 run function enemy:skill/enemy/purgatory_boss/summon

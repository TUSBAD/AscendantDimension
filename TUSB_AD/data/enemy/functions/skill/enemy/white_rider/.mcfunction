#> enemy:skill/enemy/white_rider/
#
# tag WhiteRider
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,2]
function api:dice/score

execute if score @s Random matches 1 run function enemy:skill/enemy/white_rider/day_of_death
execute if score @s Random matches 2 run function enemy:skill/enemy/white_rider/rule_through_victory

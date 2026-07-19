#> enemy:skill/enemy/shinsei/
#
# tag Shinsei
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,6]
function api:dice/score

execute if score @s Random matches 1 run function enemy:skill/enemy/shinen/teleport
execute if score @s Random matches 2 run function enemy:skill/enemy/shinsei/poison_spread
execute if score @s Random matches 3 run function enemy:skill/enemy/pale_rider/pest_crop
execute if score @s Random matches 4 run function enemy:skill/enemy/shinsei/time_manipulation/
execute if score @s Random matches 5 run function enemy:skill/enemy/shinen/reincarnate
execute if score @s Random matches 6 run function enemy:skill/enemy/shinsei/acceleration

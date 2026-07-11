#> entity:one_second
#
# Entity1秒処理
#
# @within function entity:tick
# 10秒処理
execute if score #Seconds Count matches 0 run function entity:ten_seconds

# 動き停止飛翔物判定
    execute as @e[tag=FlyingObject] if predicate lib:is_flying_object at @s run function mob_manager:entity/check_projectile
    execute as @e[tag=InKasap] at @s run function mob_manager:entity/check_kasap

# エンティティ数カウント
function entity:count/
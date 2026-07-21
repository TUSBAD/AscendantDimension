#> entity:ten_seconds
#
# 10秒処理
#
# @within function entity:one_second

execute if score #TenSeconds Count matches 0 run function entity:one_minute

#execute as @e[type=!player] unless predicate entity:kill_check run tag @s add Garbage
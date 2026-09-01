#> entity:ten_seconds
#
# 10秒処理
#
# @within function entity:one_second

execute if score #TenSeconds Count matches 0 run function entity:one_minute

#> 奈落介錯 動かないので後で
#execute as @e[type=!player] if predicate area:under_0 unless predicate entity:kill_check_y100 run tag @s add Garbage
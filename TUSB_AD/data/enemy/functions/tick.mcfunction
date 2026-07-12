#> enemy:tick
#
# 敵モブtick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function enemy:one_second

# カスタム体力へのダメージ処理
    execute as @e if predicate lib:custom_mob at @s run function mob_manager:custom_mob/health/

# Logテキストの処理
    execute as @e if predicate lib:log_stand at @s run function mob_manager:custom_mob/health/log/display_tick
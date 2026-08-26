#> core:one_minute
#
# 1分毎処理
#
# @within function core:one_second

scoreboard players remove _ ChangeDifficultyLock 1

execute if score _ ChangeDifficulty matches 0 run data remove storage core: difficult.changed
execute if score _ ChangeDifficulty matches 0 run scoreboard players reset _ ChangeDifficulty
#> job:change/
#
# 職業変更の処理
#
# @within function 

# 職業変更
scoreboard players operation @s Job = Change Job

# 演出
function job:change/vfx.m with storage job: data

# reset
scoreboard players reset Cheange Job

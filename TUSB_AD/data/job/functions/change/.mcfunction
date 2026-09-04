#> job:change/
#
# 職業変更の処理
#
# @within function 

execute store result storage _: _.id int 1 run scoreboard players get @s ChangeJob

# 職業変更
scoreboard players operation @s Job = @s ChangeJob

# 演出
function job:change/vfx.m with storage _: _

# reset
scoreboard players reset @s ChangeJob
data remove storage _: _

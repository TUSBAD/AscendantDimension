#> job:change/save.m
#
# 職業のデータをセーブする
#
# @within function job:change/

# Idから各職のレベルを保存する
$execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.job.$(Id).level int 1 run scoreboard players get @s JobLevel

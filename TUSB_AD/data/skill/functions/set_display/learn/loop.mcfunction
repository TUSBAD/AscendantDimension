#> skill:set_display/learn/loop
#
# 再帰で習得レベルを識別
#
# @within function skill:set_display/learn/

# スキルを一つずつ取り込み
data modify storage skill: _.test_2 set from storage skill: _.test_1[0]

# skill_learn_levelのminとmax取得
execute store result score #min _ run data get storage skill: _.test_2[0].level.min 1
execute store result score #max _ run data get storage skill: _.test_2[0].level.max 1

# skillを習得予約
execute if score @s Level > #min _ if score @s Level <= #max _ run data modify storage skill: _.player.Learned_skill append from storage skill: _.test_2
execute if score @s Level = #min _ run data modify storage skill: _.player.new_learn_skill append from storage skill: _.test_2

# リセット
data remove storage skill: _.test_1[0]
data remove storage skill: _.test_2

# 再帰
execute if data storage skill: _.test_1[0] run function skill:set_display/learn/loop with storage skill: _.player

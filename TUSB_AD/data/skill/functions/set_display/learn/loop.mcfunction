#> skill:set_display/learn/loop
#
# 再帰で習得レベルを識別
#
# @within function skill:set_display/learn/

execute store result storage skill: _.player.count int 1 run scoreboard players get #_ _

# スキルを一つずつ取り込み
$data modify storage skill: _.test_2 set from storage skill: _.test_1.$(count)[0]
$data remove storage skill: _.test_1.$(count)[0]

# 現在のJobとLevelで習得か判別
$execute if data storage skill: _.test_2{level:[$(level)]} run data modify storage skill: _.player.learn_skill append from storage skill: _.test_2

# リセット
data remove storage skill: _.test_2
$say $(count)
# 再帰
$execute unless data storage skill: _.test_1.$(count)[0] run scoreboard players remove #_ _ 1
$execute unless data storage skill: _.test_1.$(count)[0] run data remove storage skill: _.test_1.$(count)
execute if score #_ _ matches 0.. run function skill:set_display/learn/loop with storage skill: _.player

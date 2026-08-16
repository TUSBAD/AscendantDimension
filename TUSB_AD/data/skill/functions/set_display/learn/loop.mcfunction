#> skill:set_display/learn/loop
#
# 再帰で習得レベルを識別
#
# @within function skill:set_display/learn/

# スキルを一つ取り込む
data modify storage skill: _.player.test_2 set from storage skill: _.player.test_1[0]

# 現在のJobとLevelで習得か判別
$execute if data storage skill: _.player.test_2{level:$(level)} run data modify storage skill: _.player.learn_skill append from storage skill: _.player.test_2

# リセット
data remove storage skill: _.player.test_2

# 再帰
execute if data storage skill: _.player.test_1 run function skill:set_display/learn/loop with storage skill: _.player.level

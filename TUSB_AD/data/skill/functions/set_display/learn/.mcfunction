#> skill:set_display/learn/
#
# スキル習得
#
# @within function job:level_up/

# 個人ストレージ呼び出し
function #oh_my_dat:please

# 現在の職業のスキルを取り込み
$data modify storage skill: _.test_1 set from storage asset:skill data.$(job)
say paa

# スキルの最大数(40)を設定
scoreboard players set #_ _ 40

# 習得スキルのデータを取得
function skill:set_display/learn/loop with storage skill: _.player

# スキルを習得
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player.learn_skill append from storage skill: _.player.learn_skill

# 表示
execute if data storage skill: _.player.learn_skill run tellraw @s {"translate": "新しいスキルを覚えた！","color": "green"}
execute if data storage skill: _.player.learn_skill run function skill:set_display/learn/show

# リセット
data remove storage skill: _.player

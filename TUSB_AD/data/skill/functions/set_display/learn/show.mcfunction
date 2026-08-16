#> skill:set_display/learn/show
#
# 習得スキルを表示
#
# @within function skill:set_display/learn/

# スキル名を表示
tellraw @s {"translate": "・ %s","with": [{"storage": "skill:","nbt": "_.player.learn_skill[0].name"}]}

# 再帰で残りのスキルを表示
data remove storage skill: _.player.learn_skill[0]
execute if data storage skill: _.player.learn_skill run function skill:set_display/learn/show

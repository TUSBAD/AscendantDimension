#> player:death_item_drop/
#
#
#
# @within function player:death/

# レイズなら中断
    execute if entity @s[tag=Raise] run return 0

# 呪詛のときの処理
#    execute if entity @s[tag=Curse] run return run function player:trigger/void_death/curse

# アナザー～アセンダント
    execute if data storage core: difficult.world{level:"another"} if entity @s[tag=!Curse] run return run function player:death_item_drop/do
    execute if data storage core: difficult.world{level:"ascendant"} if entity @s[tag=!Curse] run return run function player:death_item_drop/do

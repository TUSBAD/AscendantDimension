#> player:death_item_drop/
#
#
#
# @within function player:death/

# レイズなら中断
    execute if entity @s[tag=Raise] run return 0

# 呪詛のときの処理
#    execute if entity @s[tag=Curse] run return run function player:trigger/void_death/curse

# 墓ありで墓システム起動
    execute if data storage core: difficult.world{dig_tomb:true} if entity @s[tag=!Curse] run return run function player:death_item_drop/do

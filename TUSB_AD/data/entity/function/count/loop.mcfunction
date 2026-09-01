#> entity:count/loop
#
# 敵を古い順から消します。
#
# @within function entity:count/

# 生まれた順にGarbage付与
    tag @e[tag=Enemy,team=Enemy,tag=!Garbage,limit=1] add Garbage
    scoreboard players remove _ _ 1
    execute if score _ _ matches 1.. run function entity:count/loop
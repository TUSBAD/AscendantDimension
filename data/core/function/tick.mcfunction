#> core:tick
#
# 毎tick処理
#
# @within function core:load_once
    #declare score_holder #Ticks Count

#> 現在時刻更新
    function core:clock/tick

#> ハード固定化
    function core:login/force_difficulty

#> 1秒処理
    execute if score #Ticks Count matches 0 run function core:one_second

#> 初回ログイン時
    execute as @a[team=] at @s run function core:login/first

#> ログイン時
    execute as @a[scores={LeaveGame=1..}] at @s run function core:login/

#> ワールドTick
    function area:tick
#> プレイヤーTick
    execute as @a at @s run function player:tick

#> EntityTick

    function entity:tick

#> MobTick
    execute as @e[tag=Enemy] at @s run function enemy:tick

### エンティティ削除 - 最後に実行
execute as @e[tag=Garbage] run function entity:garbage_collection

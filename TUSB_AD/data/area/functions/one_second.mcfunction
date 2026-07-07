#> area:one_second
#
# ワールド1秒処理
#
# @within function area:tick
    #declare score_holder #Seconds Count

# -> 10秒処理。
    execute if score #Seconds Count matches 0 run function area:ten_seconds

# 煉獄龍中の色々
    execute as 0-0-1-0-4 at @s positioned ~ ~-19 ~74 if block -1860 20 -51 minecraft:slime_block if entity @p[distance=..65,gamemode=!spectator] run function area:dimension/purgatory/boss/attack_check

# エンダーチェスト島のワープ
    execute positioned 58 94 -103 as @e[dx=17,dy=2,dz=17] if predicate lib:no_passengers at @s if block ~ ~-1 ~ #block:stained_glass_and_pane run spreadplayers ~ ~ 1 300 under 319 false @s

# ホッパー島のワープ
    execute positioned 177 39 -75 if entity @a[distance=..60,gamemode=!spectator] run function area:dimension/skylands/hopper/

# 煉獄マグマ
    execute as @a if dimension area:the_nether unless score @s PurgatoryInvalid matches 1.. at @s if block ~ ~0.5 ~ minecraft:lava run function area:dimension/nether/in_lava

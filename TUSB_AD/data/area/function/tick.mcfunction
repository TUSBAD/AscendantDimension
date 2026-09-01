#> area:tick
#
# ワールド関係tick処理
# 仮作成のため、後々要整理。
# @within function core:tick
#declare score_holder #Ticks Count

# -> 1秒処理
    execute if score #Ticks Count matches 0 run function area:one_second

# テーブルマウンテンの不思議な力
    execute positioned -6 65 -2148 as @a[dx=64,dy=135,dz=48,gamemode=adventure] run function area:dimension/table_mountain/fall_force
    execute as @a[predicate=area:area/table_mountain,gamemode=!spectator] at @s if block ~ ~-0.5 ~ minecraft:redstone_block unless block ~ ~-1.5 ~ minecraft:command_block run function area:dimension/table_mountain/red_zone

# ネザー火山噴火
    execute as @a[scores={MineNetherrack=1..}] at @s run function area:dimension/nether/volcano/

# サボテン島の罠 もとい サトウキビ島
    execute positioned 39 7 67 if entity @a[distance=..10,limit=1] run function area:dimension/skylands/sealed_alter/

# 交易島落下防止＆製作者村人の追加
#    execute positioned -58 23 22 in minecraft:overworld run tp @e[distance=25..,type=villager,tag=NewShopStaff] -54.5 24.5 9.0

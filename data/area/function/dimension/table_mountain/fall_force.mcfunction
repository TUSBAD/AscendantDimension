#> area:dimension/table_mountain/fall_force
#
# テーブル不正対策
#
# @within function area:tick

tellraw @s {"text":"不思議な力で押し戻された。","color":"dark_purple"}
execute at @s run tp @s ~ 37 ~

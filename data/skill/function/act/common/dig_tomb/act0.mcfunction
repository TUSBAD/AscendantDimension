#> skill:act/common/dig_tomb/act0
#
# 墓掘り - 死亡時に落としたアイテムを復元する
#
# @within function skill:practice/act/common

# スケジュール起動する
    data modify storage item: UUID.dig set from entity @s SelectedItem.components."minecraft:custom_data".DeathUUID
    data modify storage item: UUID.player set from entity @s UUID
    scoreboard players set _ _ 0
    execute store result score _ _ run data modify storage item: UUID.player set from storage item: UUID.dig
    execute if score _ _ matches 1 run function skill:act/common/dig_tomb/fail
    execute if score _ _ matches 0 run function skill:act/common/dig_tomb/success
    data remove storage item: UUID

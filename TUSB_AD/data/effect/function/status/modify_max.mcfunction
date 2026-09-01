#> effect:status/modify_max
#
# 体力回復
#
# @within function player:death/rise


# Levelに応じてMP最大値をパワー
execute store result score _ Level run scoreboard players get @s Level
scoreboard players set _ _ 50
scoreboard players set @s MPMax 100
scoreboard players operation _ Level < _ _
scoreboard players operation @s MPMax += _ Level
execute store result score @s Luck run attribute @s minecraft:luck get 10
scoreboard players operation @s MPMax += @s Luck

#体力リセット
attribute @s max_health modifier remove tusb:max_health_3276.8
attribute @s max_health modifier remove tusb:max_health_1638.4
attribute @s max_health modifier remove tusb:max_health_819.2
attribute @s max_health modifier remove tusb:max_health_409.6
attribute @s max_health modifier remove tusb:max_health_204.8
attribute @s max_health modifier remove tusb:max_health_102.4
attribute @s max_health modifier remove tusb:max_health_51.2
attribute @s max_health modifier remove tusb:max_health_25.6
attribute @s max_health modifier remove tusb:max_health_12.8
attribute @s max_health modifier remove tusb:max_health_6.4
attribute @s max_health modifier remove tusb:max_health_3.2
attribute @s max_health modifier remove tusb:max_health_1.6
attribute @s max_health modifier remove tusb:max_health_0.8
attribute @s max_health modifier remove tusb:max_health_0.4

# MP16383まで対応
scoreboard players set _ _ 131072
scoreboard players operation _ HPMax = @s MPMax
scoreboard players operation _ HPMax -= @s Luck
scoreboard players operation @s HPMax = _ HPMax
scoreboard players operation _ HPMax *= _ _
scoreboard players set _ _ 2

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_3276.8 3276.8 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_1638.4 1638.4 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_819.2 819.2 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_409.6 409.6 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_204.8 204.8 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_102.4 102.4 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_51.2 51.2 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_25.6 25.6 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_12.8 12.8 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_6.4 6.4 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_3.2 3.2 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_1.6 1.6 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_0.8 0.8 add_value

scoreboard players operation _ HPMax *= _ _
execute if score _ HPMax matches ..-1 run attribute @s max_health modifier add tusb:max_health_0.4 0.4 add_value
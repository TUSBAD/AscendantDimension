#> player:custom_item/equipments/elytra/konton
#
#
#
# @within function player:custom_item/equipments/

# トカルト+煉獄無効
scoreboard players set @s PurgatoryInvalid 5
scoreboard players set @s TocultInvalid 5

effect give @s minecraft:regeneration 61 2 true

effect give @s minecraft:fire_resistance 61 127 true

effect give @s minecraft:haste 61 2 true

effect give @s minecraft:jump_boost 61 4 true

effect give @s minecraft:water_breathing 61 127 true

effect give @s minecraft:night_vision 61 127 true

effect give @s minecraft:resistance 61 3 true

particle dust{color:[0.600,0.251,0.800],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.600,0.300,0.600],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.200,0.000,0.500],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.700,0.000,0.700],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.300,0.000,0.600],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.600,0.000,1.000],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

particle dust{color:[0.400,0.000,0.400],scale:1} ~ ~1 ~ 1.2 1.2 1.2 10 2 force @a

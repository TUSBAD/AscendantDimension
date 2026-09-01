#> entity:has_in_ground/get/life_to_cooldown
#
# lifeの値をcooldownに変換
#
# @within function entity:check_freeze

execute store result score _ _ run data get entity @s life -1
scoreboard players add _ _ 1159
return run scoreboard players get _ _
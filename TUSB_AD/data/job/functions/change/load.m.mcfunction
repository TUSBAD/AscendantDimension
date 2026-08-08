#> job:change/load.m
#
# 職業のデータをロードする
#
# @within function job:change/

# Idから各職のレベルを引き出す
$execute store result score @s JobLevel run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.job.$(id).level 1

# 演出
$title @s title {"storage": "job:","nbt": "data.$(id).name"}
title @s subtitle {"translate": "現在のレベル §l %s Lv","color": "green","with": [{"score": {"name": "@s","objective": "JobLevel"}}]}

# 職業変更によるリセット
scoreboard players add @s MPMaxFlag 0
scoreboard players set @s ModeSkillA 0
scoreboard players set @s ModeSkillB 0
scoreboard players set @s InstantSkillA 0
scoreboard players set @s InstantSkillB 0
scoreboard players set @s CurrentMode 0
scoreboard players set @s CurrentModeCost 0

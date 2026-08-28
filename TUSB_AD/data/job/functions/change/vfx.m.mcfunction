#> job:change/vfx.m
#
# 職業変更演出
#
# @within function job:change/

# title演出
title @s times 5 100 20
title @s subtitle [{"translate":"Total Level : %1$s","italic":false,"with": [{"score": {"name": "@s","objective": "Level"}}]}]
$title @s title {"translate":"%s","with":[{"storage": "job:","nbt": "data.$(id).name"}]}

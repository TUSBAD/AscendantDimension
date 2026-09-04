#> area:area/conquer/
# 島攻略時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if predicate area:area/nether run function area:area/conquer/nether
execute if predicate area:area/end run function area:area/conquer/end
execute if predicate area:area/skyland run function area:area/conquer/skyland
execute if predicate area:area/underworld run function area:area/conquer/underworld
execute if predicate area:area/cloudia run function area:area/conquer/cloudia
execute if predicate area:area/table_mountain run function area:area/conquer/table_mountain
execute if predicate area:area/gullivers_land run function area:area/conquer/gullivers_land
execute if predicate area:area/tocult_colde run function area:area/conquer/tocult_colde

## 00.0%
function area:area/conquer/total

execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 2 0.3
execute as @a at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 30 normal
execute as @a at @s run particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 normal
summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{}},Tags:[ConquerFirework]}

title @a times 5 150 20
title @a subtitle {"translate":"攻略率 : %1$s/%2$s (%3$s.%4$s%%)","italic":true,"color":"white","with":[{"nbt":"conquer.count.total","storage":"area:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"area:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"area:","separator":""}]}
title @a title {"text":"島を攻略した！","color":"gold","bold":true}
effect give @a minecraft:instant_health 1 6 true
effect give @a minecraft:saturation 1 19 true

execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage core: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings
## 経過時間を表示用に分割
function #math:clock

tellraw @a [{"translate":"攻略タイム : %1$s","italic":true,"bold":true,"color":"white","with":[{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"area:","interpret":true}]

scoreboard players reset @s UseEnderEye

### 夜をつかさどる島だった場合、夜固定を解除
execute in minecraft:overworld if block 3 77 87 minecraft:end_portal_frame[eye=true] run function area:area/conquer/luna
### 交易島だった場合、祈りを解禁
execute in minecraft:overworld if block -70 15 32 minecraft:end_portal_frame[eye=true] run function area:area/conquer/traders_island

# 15島攻略した場合の処理
execute if data storage area: conquer.count{total:15} as @a run tellraw @a {"translate": "テーブルマウンテンに行けるようになった！","color": "green"}

# 20島攻略した場合の処理
execute if data storage area: conquer.count{total:20} as @a run tellraw @a {"translate": "EXドメインにて周回ボス戦ができるようになりました！","color": "yellow"}

# 50島攻略した場合の処理
execute if data storage area: conquer.count{total:50} positioned -2720 9 122 run forceload add ~ ~ ~ ~
execute if data storage area: conquer.count{total:50} run schedule function area:area/conquer/island_complete_50 1t

# 80島攻略した場合の処理
execute if data storage area: conquer.count{total:80} as @a run function area:area/conquer/island_complete_80

### ハードコアモードだった場合全員を復活
execute if data storage area: settings{hardcore:true} as @a[tag=death] run function core:hard_core_mode/respawn

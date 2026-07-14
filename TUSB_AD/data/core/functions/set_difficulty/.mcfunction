#> core:set_difficulty/
# 難易度調整するやつ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### プレイヤー人数を取得
execute store result score #Difficulty _ if entity @a
### プレイヤー人数^2が基本の難易度補正
scoreboard players operation #Difficulty _ *= #Difficulty _
### レベルも取得して2で割る
scoreboard players set # _ 2
scoreboard players operation _ _ = @a Level
scoreboard players operation _ _ /= # _
scoreboard players operation #Difficulty _ += _ _
### 達成率も反映する
execute store result score # Calc run function calc:island/clear_count_percent
scoreboard players operation #Difficulty _ += # Calc

data modify storage core: difficulty_modifier set value {speed:0,resistance:0}
execute if score #Difficulty _ matches 30.. run data modify storage core: difficulty_modifier set value {speed:1,resistance:1}
execute if score #Difficulty _ matches 70.. run data modify storage core: difficulty_modifier set value {speed:2,resistance:2}
execute if score #Difficulty _ matches 110.. run data modify storage core: difficulty_modifier set value {speed:3,resistance:2}
execute if score #Difficulty _ matches 150.. run data modify storage core: difficulty_modifier set value {speed:4,resistance:3,strength:1}
execute if score #Difficulty _ matches 190.. run data modify storage core: difficulty_modifier set value {speed:4,resistance:4,stenngth:5}
execute if score #Difficulty _ matches 300.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:10,maxhealth:1}
execute if score #Difficulty _ matches 600.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:20,maxhealth:10}
execute if score #Difficulty _ matches 1200.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:50,maxhealth:25}
execute if score #Difficulty _ matches 1500.. run data modify storage core: difficulty_modifier set value {speed:5,resistance:4,strength:100,maxhealth:50}

#> skill:act/ninja/suriken/schedule/
### 手裏剣が飛んでいるときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=Suriken] at @s run function skill:act/ninja/suriken/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/ninja/suriken/schedule/ 1t

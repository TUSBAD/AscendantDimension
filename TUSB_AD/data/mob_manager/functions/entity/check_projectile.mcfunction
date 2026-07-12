#> mob_manager:entity/check_projectile
# 飛んでいるエンティティが動かなくなったら消す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 飛んでるエンティティのストレージ
function #oh_my_dat:please
### エンティティの座標を取得
execute store result storage entity: pos.x int 1 run data get entity @s Pos[0] 10
execute store result storage entity: pos.y int 1 run data get entity @s Pos[1] 10
execute store result storage entity: pos.z int 1 run data get entity @s Pos[2] 10

### 前の座標と比較
data remove storage entity: _
data modify storage entity: _ set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.Pos
execute store result storage entity: _ byte 1 run data modify storage entity: _ set from storage entity: pos
### 座標を記録
data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.Pos set from storage entity: pos

### 書き換えに失敗したら(_:false)エンティティは止まっているので、削除する
execute if data storage entity: {_:false} run tag @s add Garbage

### 近くにプレイヤーがいなくても消す
execute unless entity @a[distance=..80] run tag @s add Garbage

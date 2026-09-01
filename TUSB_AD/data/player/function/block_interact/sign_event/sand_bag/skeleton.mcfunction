#> player:block_interact/sign_event/sand_bag/skeleton
# スキル設定場のサンドバッグ看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon bat -2727 89 -417 {Tags:["SandBag"],Passengers:[{id:"minecraft:wither_skeleton",DeathLootTable:"minecraft:empty",Tags:["SandBag"],HandItems:[{id:"minecraft:stick",Count:65b},{}],ArmorItems:[{},{},{},{id:"minecraft:oxeye_daisy",Count:65b}],attributes:[{id:"minecraft:attack_damage",base:0}]}]}
particle block{block_state:"minecraft:coal_block"} -2727 89 -417 1 3 1 0 200 normal
playsound minecraft:entity.generic.swim master @a[distance=..10]
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..10] ~ ~ ~ 0.4 1

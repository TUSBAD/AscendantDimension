#> core:login/schedule
# ログイン時にエラーがない場合の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もし職業があれば、現在のスキル設定を表示
execute as @a[tag=LoginMessage,scores={Job=1..}] run function player:show_text/skill
### 現在の難易度を表示
### TODO:難易度部分をクリックしたら難易度の詳細を表示するようにしたい。
execute if data storage core: difficult.world{level:"picnic"} run tellraw @a[tag=LoginMessage] [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @a[tag=LoginMessage] [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @a[tag=LoginMessage] [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"ascendant"} run tellraw @a[tag=LoginMessage] [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff"}]
execute if data storage core: difficult.world{level:"debug"} run tellraw @a[tag=LoginMessage] [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.debug.text","storage":"core:","color":"dark_gray"}]
### 祈りが表示できれば表示
tag @a[tag=LoginMessage] add Pray

tag @a[tag=LoginMessage] remove LoginMessage

#> entity:villager/talk_event/pastor/trigger/difficulty
#
# 牧師との会話処理(難易度変更)
#
# @within function entity:villager/talk_event/pastor/
scoreboard players reset @s PastorFlag

tellraw @s "====================================================="
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.INFO"},{"translate":"難易度を変更します。変更したい難易度を%1$sしてください。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""
execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.hardcore.text","storage":"core:","color":"#a600ff"}]
execute if data storage core: difficult.world{level:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.nightmare.text","storage":"core:","color":"#2848ff"}]
execute if data storage core: difficult.world{level:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.debug.text","storage":"core:","color":"dark_gray"}]
tellraw @s ""

#>クリア数抽出
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""

tellraw @s ""

tellraw @s "====================================================="
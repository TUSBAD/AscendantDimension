tellraw @a "====================================================="
execute as @a at @s run playsound entity.villager.work_cartographer master @s ~ ~ ~ 1.0 1.0
function core:version_update/check/
tellraw @a ""
execute if data storage core: difficult{area:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{area:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{area:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{area:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage core: difficult{area:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
execute if data storage core: difficult{area:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"ワールドを再読み込みしました。","bold": true}]
tellraw @a ""
tellraw @a ""
tellraw @a "====================================================="
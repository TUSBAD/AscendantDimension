tellraw @a "====================================================="
execute as @a at @s run playsound entity.villager.work_cartographer master @s ~ ~ ~ 1.0 1.0
tellraw @a [{"translate":"現在のVersion"}," : ",{"translate":"v1.%1$s.%2$s","color":"green","with":[{"storage":"core:","nbt":"Version.Major"},{"storage":"core:","nbt":"Version.Minor"}]}]
tellraw @a ""
execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]

execute if data storage core: difficult.world{level:"ascendant"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff"}]
execute if data storage core: {debug:1b} run tellraw @s [{"translate":"デバッグモード有効中","color":"dark_gray"}]
tellraw @a ""
tellraw @a ""
tellraw @a [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"ワールドを再読み込みしました。","bold": true}]
tellraw @a ""
tellraw @a ""
tellraw @a "====================================================="
#> player:game_settings/show_world_info/all
#
#> ワールドデータ表示
#
#

tellraw @s "====================================================="
tellraw @s ""
tellraw @s [{"translate":"[前のページ]","color":"#808080"},{"translate":" / ","color": "white"},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 201"}},{"translate":" / ","color": "white"},{"translate":"[最初のページ]","color":"#808080"}]
tellraw @s ""
execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.hardcore.text","storage":"core:","color":"#a600ff"}]
execute if data storage core: difficult.world{level:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.nightmare.text","storage":"core:","color":"#2848ff"}]
execute if data storage core: difficult.world{level:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.debug.text","storage":"core:","color":"dark_gray"}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
execute store result score _ Calc run function calc:island/clear_count
execute store result score # _ run function #calc:island/get_total
execute store result score # Calc run function calc:island/clear_count_percent
#>クリア数抽出
tellraw @s [{"translate":"島 攻略率"}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]
tellraw @s ""
## 経過時間を表示用に分割
function #math:clock

tellraw @s {"text":"= ワールド統計 =","color":"white","bold":true}
tellraw @s [{"translate":"総死亡回数 : %1$s回","italic":false,"color":"white","with":[{"score": {"name": "AllDeathCount","objective": "DeathCount"},"color":"#ff3333"}]}]
tellraw @s [{"translate":"経過時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"#Hours","objective":"Count"}},{"score":{"name":"#Minutes","objective":"Count"}},[{"score":{"name":"#TenSeconds","objective":"Count"}},{"score":{"name":"#Seconds","objective":"Count"}}]]}]
tellraw @s ""
# 時間計算
execute store result storage math: in int 1 run scoreboard players get @s Age
function #math:clock

# 表示
tellraw @s {"text":"= 個人統計 =","color":"white","bold":true}
tellraw @s [{"translate":"%1$sの死亡回数 : %2$s回","italic":false,"color":"white","with":[{"selector": "@s"},{"score": {"name": "@s","objective": "DeathCount"},"color":"#ff3333"}]}]
tellraw @s [{"translate":"%1$sの生存時間 : %2$s","italic":false,"color":"green","with":[{"selector": "@s"},{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]}]

tellraw @s "====================================================="
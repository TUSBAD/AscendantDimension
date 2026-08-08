#> player:game_settings/show_world_info/page_4
#
#> ワールドデータ表示
#
#> 虚数空間・異空間・異次元・朽ち果てた戦場

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#808080","clickEvent":{"action": "run_command","value": ""}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.hardcore.text","storage":"core:","color":"#a600ff"}]
execute if data storage core: difficult.world{level:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.nightmare.text","storage":"core:","color":"#2848ff"}]
execute if data storage core: difficult.world{level:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.debug.text","storage":"core:","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""

#> 330-339: 虚数空間
execute store result score _ Calc run data get storage area: capture.imaginary_space
execute store result score # _ run function calc:island/get_total/imaginary_space
tellraw @s [{"nbt":"area_name.imaginary_space","storage":"area:","color":"#758492","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 330"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 340-349: エンド
execute store result score _ Calc run data get storage area: capture.end
execute store result score # _ run function calc:island/get_total/end
tellraw @s [{"nbt":"area_name.end","storage":"area:","color":"#9900d1","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 340"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 350-359: 異空間
execute store result score _ Calc run data get storage area: capture.unusual_space
execute store result score # _ run function calc:island/get_total/unusual_space
tellraw @s [{"nbt":"area_name.unusual_space","storage":"area:","color":"#e60005","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 350"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 360-369: 異次元
execute store result score _ Calc run data get storage area: capture.another_dimension
execute store result score # _ run function calc:island/get_total/another_dimension
tellraw @s [{"nbt":"area_name.another_dimension","storage":"area:","color":"#02ca9d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 360"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 370-379: 朽ち果てた戦場
execute store result score _ Calc run data get storage area: capture.ancient_field
execute store result score # _ run function calc:island/get_total/ancient_field
tellraw @s [{"nbt":"area_name.ancient_field","storage":"area:","color":"#b9176c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 370"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"#Hours","objective":"Count"}},{"score":{"name":"#Minutes","objective":"Count"}},[{"score":{"name":"#TenSeconds","objective":"Count"}},{"score":{"name":"#Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="
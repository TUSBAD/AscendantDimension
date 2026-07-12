#> player:game_settings/show_world_info/page_1
#
#> ワールドデータ表示
#
#> 通常世界上/下・交易島・クラウディア

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#a600ff"}]
execute if data storage core: difficult.world{level:"nightmare"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ナイトメア","color":"#2848ff"}]
execute if data storage core: difficult.world{level:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""
tellraw @s ""

#> 210-219: 通常世界下層
execute store result score _ Calc run data get storage area: capture.skylands
execute store result score # _ run function calc:island/get_total/skylands
tellraw @s [{"nbt":"area_name.skylands","storage":"area:","color":"#b7b7b7","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 210"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 220-229: 通常世界上層
execute store result score _ Calc run data get storage area: capture.new_skylands
execute store result score # _ run function calc:island/get_total/new_skylands
tellraw @s [{"nbt":"area_name.new_skylands","storage":"area:","color":"#ff3948","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 220"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 230-239: 交易島
execute store result score _ Calc run data get storage area: capture.tradeisland
execute store result score # _ run function calc:island/get_total/tradeisland
tellraw @s [{"nbt":"area_name.tradeisland","storage":"area:","color":"#70f158","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 230"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 240-249: クラウディア
execute store result score _ Calc run data get storage area: capture.cloudia
execute store result score # _ run function calc:island/get_total/cloudia
tellraw @s [{"nbt":"area_name.cloudia","storage":"area:","color":"#23DDFA","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 240"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"#Hours","objective":"Count"}},{"score":{"name":"#Minutes","objective":"Count"}},[{"score":{"name":"#TenSeconds","objective":"Count"}},{"score":{"name":"#Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="
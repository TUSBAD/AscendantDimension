#> player:game_settings/show_world_info/page_3
#
#> ワールドデータ表示
#
#> トカルト・図書館・エンド・ニヴル

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 204"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

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

#> 290-299: トカルト
execute store result score _ Calc run data get storage area: capture.tocult_colde
execute store result score # _ run function calc:island/get_total/tocult_colde
tellraw @s [{"nbt":"area_name.tocult_colde","storage":"area:","color":"#14fffb","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 290"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 300-309: 図書館
execute store result score _ Calc run data get storage area: capture.library
execute store result score # _ run function calc:island/get_total/library
tellraw @s [{"nbt":"area_name.library","storage":"area:","color":"#fda31c","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 300"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 310-319: ニヴル
execute store result score _ Calc run data get storage area: capture.niflheimr
execute store result score # _ run function calc:island/get_total/niflheimr
tellraw @s [{"nbt":"area_name.niflheimr","storage":"area:","color":"#2693ff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 310"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 320-329: ヘルヘイム
execute store result score _ Calc run data get storage area: capture.hellheim
execute store result score # _ run function calc:island/get_total/hellheim
tellraw @s [{"nbt":"area_name.hellheimr","storage":"area:","color":"#87dada","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 320"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"#Hours","objective":"Count"}},{"score":{"name":"#Minutes","objective":"Count"}},[{"score":{"name":"#TenSeconds","objective":"Count"}},{"score":{"name":"#Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="
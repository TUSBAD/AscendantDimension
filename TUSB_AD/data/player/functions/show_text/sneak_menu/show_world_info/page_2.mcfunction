#> player:show_text/sneak_menu/show_world_info/page_2
#
#> ワールドデータ表示
#
#> 地下世界・ガリバー・テーブル・煉獄

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 201"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 203"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 200"}}]

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

#> 250-259: 地下世界
execute store result score _ Calc run data get storage area: capture.underworld
execute store result score # _ run function calc:island/get_total/underworld
tellraw @s [{"nbt":"area_name.underworld","storage":"area:","color":"#586bfe","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 250"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 260-269: ガリバーランド
execute store result score _ Calc run data get storage area: capture.gullivers_land
execute store result score # _ run function calc:island/get_total/gullivers_land
tellraw @s [{"nbt":"area_name.gullivers_land","storage":"area:","color":"#ffd700","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 260"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 270-279: テーブル
execute store result score _ Calc run data get storage area: capture.table_mountain
execute store result score # _ run function calc:island/get_total/table_mountain
tellraw @s [{"nbt":"area_name.table_mountain","storage":"area:","color":"#31fb2d","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 270"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 280-289: ネザー
execute store result score _ Calc run data get storage area: capture.purgatory
execute store result score # _ run function calc:island/get_total/purgatory
tellraw @s [{"nbt":"area_name.nether","storage":"area:","color":"#f42f2f","clickEvent":{"action": "run_command","value": "/trigger ShowMenu set 280"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"#Hours","objective":"Count"}},{"score":{"name":"#Minutes","objective":"Count"}},[{"score":{"name":"#TenSeconds","objective":"Count"}},{"score":{"name":"#Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="
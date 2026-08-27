#> core:game_menu/show_difficulty_info/all
#
# 牧師との会話処理(難易度変更)
#
# @within function core:game_menu/show_difficulty_info/
function makeup:core/game_menu/reshow

tellraw @s "====================================================="
tellraw @s ""
tellraw @s [{"storage":"core:","nbt":"Prefix.INFO"},{"translate":"難易度を変更します。変更したい難易度を%1$sしてください。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"難易度を変更すると 1時間の変更制限がかかります。"}]
tellraw @s ""
execute if data storage core: difficult.world{level:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]
execute if data storage core: difficult.world{level:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]
execute if data storage core: difficult.world{level:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]
execute if data storage core: difficult.world{level:"ascendant"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff"}]
execute if data storage core: {debug:1b} run tellraw @s [{"translate":"デバッグモード有効中","color":"dark_gray"}]
tellraw @s ""

#>難易度表示
tellraw @s {"text":"","extra":[{"text":"■","color":"#B3F3FF"},{"text":"■","color":"#ACEFFF"},{"text":"■","color":"#A5EBFF"},{"text":"■","color":"#9EE7FF"},{"text":"■","color":"#97E3FF"},{"text":"■","color":"#91DFFF"},{"text":"■","color":"#8ADBFF"},{"text":"■","color":"#83D8FF"},{"text":"■","color":"#7CD4FF"},{"text":"■","color":"#75D0FF"},{"text":"■","color":"#6ECCFF"},{"text":"■","color":"#67C8FF"},{"text":"■","color":"#60C4FF"},{"text":"■","color":"#5AC0FF"},{"text":"■","color":"#53BCFF"},{"text":"■","color":"#4CB8FF"},{"text":"■","color":"#45B4FF"},{"text":"■","color":"#3EB0FF"},{"text":"■","color":"#37ACFF"},{"text":"■","color":"#30A8FF"},{"text":"■","color":"#29A5FF"},{"text":"■","color":"#22A1FF"},{"text":"■","color":"#1C9DFF"},{"text":"■","color":"#1599FF"},{"text":"■","color":"#0E95FF"},{"text":"■","color":"#0791FF"},{"text":"■","color":"#008DFF"},{"text":"■","color":"#0791FF"},{"text":"■","color":"#0E95FF"},{"text":"■","color":"#1599FF"},{"text":"■","color":"#1C9DFF"},{"text":"■","color":"#22A1FF"},{"text":"■","color":"#29A5FF"},{"text":"■","color":"#30A8FF"},{"text":"■","color":"#37ACFF"},{"text":"■","color":"#3EB0FF"},{"text":"■","color":"#45B4FF"},{"text":"■","color":"#4CB8FF"},{"text":"■","color":"#53BCFF"},{"text":"■","color":"#5AC0FF"},{"text":"■","color":"#60C4FF"},{"text":"■","color":"#67C8FF"},{"text":"■","color":"#6ECCFF"},{"text":"■","color":"#75D0FF"},{"text":"■","color":"#7CD4FF"},{"text":"■","color":"#83D8FF"},{"text":"■","color":"#8ADBFF"},{"text":"■","color":"#91DFFF"},{"text":"■","color":"#97E3FF"},{"text":"■","color":"#9EE7FF"},{"text":"■","color":"#A5EBFF"},{"text":"■","color":"#ACEFFF"},{"text":"■","color":"#B3F3FF"}]}
tellraw @s ""
tellraw @s ""
tellraw @s [{"text":"                  "},{"text":"p","font":"icon"},{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 401"},"hoverEvent":{"action":"show_text","contents":{"translate":"この難易度の詳細を表示します。\n難易度変更は詳細ページで行えます。"}}},{"text":"            "},{"text":"c","font":"icon"},{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 403"},"hoverEvent":{"action":"show_text","contents":{"translate":"この難易度の詳細を表示します。\n難易度変更は詳細ページで行えます。"}}}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"text":"                  "},{"text":"a","font":"icon"},{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 405"},"hoverEvent":{"action":"show_text","contents":{"translate":"この難易度の詳細を表示します。\n難易度変更は詳細ページで行えます。"}}},{"text":"             "},{"text":"n","font":"icon"},{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 407"},"hoverEvent":{"action":"show_text","contents":{"translate":"この難易度の詳細を表示します。\n難易度変更は詳細ページで行えます。"}}}]
tellraw @s ""
tellraw @s ""
tellraw @s {"text":"","extra":[{"text":"■","color":"#B3F3FF"},{"text":"■","color":"#ACEFFF"},{"text":"■","color":"#A5EBFF"},{"text":"■","color":"#9EE7FF"},{"text":"■","color":"#97E3FF"},{"text":"■","color":"#91DFFF"},{"text":"■","color":"#8ADBFF"},{"text":"■","color":"#83D8FF"},{"text":"■","color":"#7CD4FF"},{"text":"■","color":"#75D0FF"},{"text":"■","color":"#6ECCFF"},{"text":"■","color":"#67C8FF"},{"text":"■","color":"#60C4FF"},{"text":"■","color":"#5AC0FF"},{"text":"■","color":"#53BCFF"},{"text":"■","color":"#4CB8FF"},{"text":"■","color":"#45B4FF"},{"text":"■","color":"#3EB0FF"},{"text":"■","color":"#37ACFF"},{"text":"■","color":"#30A8FF"},{"text":"■","color":"#29A5FF"},{"text":"■","color":"#22A1FF"},{"text":"■","color":"#1C9DFF"},{"text":"■","color":"#1599FF"},{"text":"■","color":"#0E95FF"},{"text":"■","color":"#0791FF"},{"text":"■","color":"#008DFF"},{"text":"■","color":"#0791FF"},{"text":"■","color":"#0E95FF"},{"text":"■","color":"#1599FF"},{"text":"■","color":"#1C9DFF"},{"text":"■","color":"#22A1FF"},{"text":"■","color":"#29A5FF"},{"text":"■","color":"#30A8FF"},{"text":"■","color":"#37ACFF"},{"text":"■","color":"#3EB0FF"},{"text":"■","color":"#45B4FF"},{"text":"■","color":"#4CB8FF"},{"text":"■","color":"#53BCFF"},{"text":"■","color":"#5AC0FF"},{"text":"■","color":"#60C4FF"},{"text":"■","color":"#67C8FF"},{"text":"■","color":"#6ECCFF"},{"text":"■","color":"#75D0FF"},{"text":"■","color":"#7CD4FF"},{"text":"■","color":"#83D8FF"},{"text":"■","color":"#8ADBFF"},{"text":"■","color":"#91DFFF"},{"text":"■","color":"#97E3FF"},{"text":"■","color":"#9EE7FF"},{"text":"■","color":"#A5EBFF"},{"text":"■","color":"#ACEFFF"},{"text":"■","color":"#B3F3FF"}]}
tellraw @s "====================================================="

#> core:game_menu/reshow
#
#
#
# @within function core:game_menu/show

tellraw @s ["",{"translate":"・ステータス","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}}," ",{"translate":"・職業変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," ",{"translate":"・ワールド情報","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 200"}}," ",{"translate":"・詳細設定","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 10"}}]

#フィールサイズ設定
execute if data entity @s Inventory[{tag:{Skill:{Name:"フィール"}}}] in area:control run function skill:act/summoner/fill/show_size

#> ShowMenuの値と設定
#  1: ステータス表示
#   : スキル
#  2: 職業変更
# 10: 詳細設定
#
# 11: パーティクル抑制
#
# 101-104: フィールサイズ
#
# 200-399: ワールド情報
# 210-: 各ディメンションの攻略率(予定)

function makeup:game_menu/reshow
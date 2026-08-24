#> core:game_menu/triggered
#
#
#
# @within function core:game_menu/reshow

# 1 ステータス確認 (ジョブ・レベル・経験値・(スキル)
execute if score @s ChangeSettings matches 1 run function core:game_menu/show_status

# 2 職業変更
execute if score @s ChangeSettings matches 2 in area:control run function job:change/dialog/

# 10 パーティクル抑制
execute if score @s ChangeSettings matches 11 run function core:game_menu/tune_particle

# 101-105 フィールサイズ
execute if score @s ChangeSettings matches 101..105 run function skill:act/summoner/fill/set_size

# 200-399 ワールド情報
execute if score @s ChangeSettings matches 200..399 run function core:game_menu/show_world_info/

# 400-410 難易度情報&変更
execute if score @s ChangeSettings matches 400..410 run function core:game_menu/show_difficulty_info/

##設定画面再表示
function core:game_menu/reshow

# 3 詳細設定表示
execute if score @s ChangeSettings matches 10..15 run function core:game_menu/show_settings

##トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings
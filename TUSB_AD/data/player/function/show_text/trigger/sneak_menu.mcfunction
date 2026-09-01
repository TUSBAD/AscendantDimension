#> player:show_text/trigger/show_menu
#
# trigger ChangeSettings
#
# @within function player:show_text/trigger/

# メニュートリガー
execute if score @s ChangeSettings matches 1 run function player:show_text/sneak_menu/show

# 情報トリガー
execute if score @s ChangeSettings matches 2 run function player:show_text/sneak_menu/data/list

# 統計トリガー
execute if score @s ChangeSettings matches 11 run function player:show_text/sneak_menu/data/statistics

# 攻略率トリガー
execute if score @s ChangeSettings matches 200..300 run function player:show_text/sneak_menu/show_world_info/

# ステータストリガー
execute if score @s ChangeSettings matches 13 run function player:show_text/sneak_menu/data/status

# 設定画面再表示
execute if score @s ChangeSettings matches 2.. run function player:show_text/sneak_menu/show

##トリガーリセット
execute if score @s ChangeSettings matches 1.. run scoreboard players set @s ChangeSettings 0
scoreboard players enable @s ChangeSettings

stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

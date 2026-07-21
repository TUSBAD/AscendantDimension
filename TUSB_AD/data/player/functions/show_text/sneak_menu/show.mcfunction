#> player:show_text/sneak_menu/show
#
# リログ時メニュー表示
#
#
tellraw @s [{"translate":"[INFO] 確認や設定ができます。"}]
tellraw @s ["",{"translate":"・情報表示","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSkill set 1"}}," ",{"translate":"・職業変更","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 2"}}]

execute if data storage debug: Debug{Mode:-1s} run function debug:debug_menu/show

function makeup:game_menu/reshow
tellraw @s "====================================================="

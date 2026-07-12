#> core:game_menu/show_settings
#
#
#
# @within function core:game_menu/reshow

tellraw @s ["",{"translate":"・パーティクル抑制","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ShowMenu set 11"}}]
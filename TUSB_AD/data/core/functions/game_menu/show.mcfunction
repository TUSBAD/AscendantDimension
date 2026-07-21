#> core:game_menu/show
#
#
#
# @within function player:sneak/frequency

tellraw @s [{"translate":"[INFO] 確認や設定ができます。"}]
scoreboard players enable @s ChangeSettings

function core:game_menu/reshow
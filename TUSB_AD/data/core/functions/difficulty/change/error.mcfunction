#> core:difficulty/change/error
#
# 同一難易度に変更した時のエラー
#
# @within function core:game_menu/show_difficulty_info/

function makeup:error/warning
tellraw @a [{"storage":"core:","nbt":"Prefix.ERROR"},{"translate":"この難易度には変更できません！","color":"#FF2A2A"}]

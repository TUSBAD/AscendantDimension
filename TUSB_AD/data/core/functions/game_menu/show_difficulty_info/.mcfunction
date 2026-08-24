#> core:game_menu/show_difficulty_info/
#
#> 難易度変更
#
#

#> 400:ALL
    execute if score @s ChangeSettings matches 400 run function core:game_menu/show_difficulty_info/all
#> 401:Picnic
    execute if score @s ChangeSettings matches 401 run function core:game_menu/show_difficulty_info/picnic
#> 403:Casual
    execute if score @s ChangeSettings matches 403 run function core:game_menu/show_difficulty_info/casual
#> 405:Another
    execute if score @s ChangeSettings matches 405 run function core:game_menu/show_difficulty_info/another
#> 407:Nightmare
    execute if score @s ChangeSettings matches 407 run function core:game_menu/show_difficulty_info/nightmare

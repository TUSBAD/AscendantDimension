#> core:game_menu/show_difficulty_info/
#
#> 難易度変更
#
#

## 制限あり
execute if data storage core: difficult.changed run tellraw @s ["",{"storage":"core:","nbt":"Prefix.INFO"},{"translate":"変更制限:残り %1$s分","with":[{"score":{"name":"_","objective":"ChangeDifficultyLock"}}]}]
execute if data storage core: difficult.changed run function makeup:core/difficulty/change/failed
execute if data storage core: difficult.changed run return fail

## 制限無し
#> 400:ALL
    execute unless data storage core: difficult.changed if score @s ChangeSettings matches 400 run function core:game_menu/show_difficulty_info/all
#> 401:Picnic
    execute if data storage core: difficult.world{level:"picnic"} if score @s ChangeSettings matches 401 run function core:difficulty/change/no_change
    execute unless data storage core: difficult.world{level:"picnic"} if score @s ChangeSettings matches 401 run function core:game_menu/show_difficulty_info/picnic
#> 403:Casual
    execute if data storage core: difficult.world{level:"casual"} if score @s ChangeSettings matches 403 run function core:difficulty/change/no_change
    execute unless data storage core: difficult.world{level:"casual"} if score @s ChangeSettings matches 403 run function core:game_menu/show_difficulty_info/casual
#> 405:Another
    execute if data storage core: difficult.world{level:"another"} if score @s ChangeSettings matches 405 run function core:difficulty/change/no_change
    execute unless data storage core: difficult.world{level:"another"} if score @s ChangeSettings matches 405 run function core:game_menu/show_difficulty_info/another
#> 407:ascendant
    execute if data storage core: difficult.world{level:"ascendant"} if score @s ChangeSettings matches 407 run function core:difficulty/change/no_change
    execute unless data storage core: difficult.world{level:"ascendant"} if score @s ChangeSettings matches 407 run function core:game_menu/show_difficulty_info/ascendant
#> 確認時
    execute if score @s ChangeSettings matches 402 run function core:difficulty/change/check
    execute if score @s ChangeSettings matches 404 run function core:difficulty/change/check
    execute if score @s ChangeSettings matches 406 run function core:difficulty/change/check
    execute if score @s ChangeSettings matches 408 run function core:difficulty/change/check

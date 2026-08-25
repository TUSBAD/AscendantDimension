#> core:game_menu/show_difficulty_info/check
#
# 最終確認
#
# @within function core:game_menu/show_difficulty_info/

# リセット
data remove storage core: difficult.world.change

# 分岐
    execute if score @s ChangeSettings matches 402 unless data storage core: difficult.world{level:picnic} run data modify storage core: difficult.world.change set from storage core: difficult.picnic

    execute if score @s ChangeSettings matches 404 unless data storage core: difficult.world{level:casual} run data modify storage core: difficult.world.change set from storage core: difficult.casual

    execute if score @s ChangeSettings matches 406 unless data storage core: difficult.world{level:another} run data modify storage core: difficult.world.change set from storage core: difficult.another

    execute if score @s ChangeSettings matches 408 unless data storage core: difficult.world{level:ascendant} run data modify storage core: difficult.world.change set from storage core: difficult.ascendant

# 難易度が変更しない場合
execute unless data storage core: difficult.world.change run function core:game_menu/show_difficulty_info/error

execute if data storage core: difficult.world.change run function core:difficulty/change/stand.m with storage core: difficult.world.change
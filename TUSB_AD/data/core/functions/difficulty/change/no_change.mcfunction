#> core:difficulty/change/no_change
#
# 同一難易度選択時
#
# @within function core:game_menu/show_difficulty_info/

function makeup:error/warn_sound

#> 同一難易度選択時のメッセージ
    execute if data storage core: difficult.world{level:picnic} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.ERROR"},{"translate":"既に%1$sを選択しています！","with":[{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"}]}]
    execute if data storage core: difficult.world{level:casual} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.ERROR"},{"translate":"既に%1$sを選択しています！","with":[{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A"}]}]
    execute if data storage core: difficult.world{level:another} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.ERROR"},{"translate":"既に%1$sを選択しています！","with":[{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]}]
    execute if data storage core: difficult.world{level:ascendant} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.ERROR"},{"translate":"既に%1$sを選択しています！","with":[{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff"}]}]

#> core:difficulty/change/check
#
# 最終確認
#
# @within function core:game_menu/show_difficulty_info/

# リセット
    data remove storage core: difficult.world.change
    data remove storage core: difficult.changed

# 分岐
    execute if score @s ChangeSettings matches 402 unless data storage core: difficult.world{level:picnic} run data modify storage core: difficult.world.change set from storage core: difficult.picnic
    execute if score @s ChangeSettings matches 404 unless data storage core: difficult.world{level:casual} run data modify storage core: difficult.world.change set from storage core: difficult.casual
    execute unless data storage core: difficult.selected if score @s ChangeSettings matches 406 unless data storage core: difficult.world{level:another} run data modify storage core: difficult.world.change set from storage core: difficult.another
    execute unless data storage core: difficult.selected if score @s ChangeSettings matches 408 unless data storage core: difficult.world{level:ascendant} run data modify storage core: difficult.world.change set from storage core: difficult.ascendant

# 高難易度からカジュアル以下に下げた場合の警告
    execute if data storage core: difficult.world.change unless data storage core: difficult.world.change if data storage core: difficult.world{level:another} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.WARN"},{"translate":"%1$sから難易度を変更すると、%1$sへ戻せません！","bold":true,"with":[{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF"}]}]
    #execute if data storage core: difficult.world.change unless data storage core: difficult.world.change if data storage core: difficult.world{level:ascendant} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.WARN"},{"translate":"%1$sから難易度を変更すると、%1$sへ戻せません！","bold":true,"with":[{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff"}]}]

# 高難易度にあげようとした場合の警告
    execute unless data storage core: difficult.world.change if data storage core: difficult.selected if data storage core: difficult.world{level:picnic} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.WARN"},{"translate":"既に%1$sを選択しているので\n%2$sと%3$sには変更できません。","with":[{"nbt":"difficult.picnic.text","storage":"core:","color":"#80FF00","bold": true},{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF","bold": true},{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff","bold": true}]}]
    execute unless data storage core: difficult.world.change if data storage core: difficult.selected if data storage core: difficult.world{level:casual} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.WARN"},{"translate":"既に%1$sを選択しているので\n%2$sと%3$sには変更できません。","with":[{"nbt":"difficult.casual.text","storage":"core:","color":"#FF2A2A","bold": true},{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF","bold": true},{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff","bold": true}]}]
    execute unless data storage core: difficult.world.change if data storage core: difficult.selected if data storage core: difficult.world{level:another} run tellraw @a ["",{"storage":"core:","nbt":"Prefix.WARN"},{"translate":"既に%1$sを選択しているので\n%2$sには変更できません。","with":[{"nbt":"difficult.another.text","storage":"core:","color":"#FF00FF","bold": true},{"nbt":"difficult.ascendant.text","storage":"core:","color":"#42c1ff","bold": true}]}]

# 問題ない場合、実行
    execute if data storage core: difficult.world.change run function core:difficulty/change/stand.m with storage core: difficult.world.change

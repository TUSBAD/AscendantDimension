#> core:difficulty/select/
#
# 難易度選択の分岐
#
# @within function

# リセット
data remove storage core: difficult.world.change

# 分岐
    execute if entity @s[advancements={core:difficulty/select={picnic=true}}] unless data storage core: difficult.world{level:picnic} run data modify storage core: difficult.world.change set from storage core: difficult.picnic

    execute if entity @s[advancements={core:difficulty/select={casual=true}}] unless data storage core: difficult.world{level:casual} run data modify storage core: difficult.world.change set from storage core: difficult.casual

    execute if entity @s[advancements={core:difficulty/select={another=true}}] unless data storage core: difficult.world{level:another} run data modify storage core: difficult.world.change set from storage core: difficult.another

    execute if entity @s[advancements={core:difficulty/select={ascendant=true}}] unless data storage core: difficult.world{level:ascendant} run data modify storage core: difficult.world.change set from storage core: difficult.ascendant

# 難易度が変更しない場合
execute unless data storage core: difficult.world.change run tellraw @s {"translate": "難易度に変更がありません。","color": "red"}

execute if data storage core: difficult.world.change run function core:difficulty/change/stand.m with storage core: difficult.world.change

advancement revoke @s only core:difficulty/select
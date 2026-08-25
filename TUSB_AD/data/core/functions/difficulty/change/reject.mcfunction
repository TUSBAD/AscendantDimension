#> core:difficulty/change/reject
#
# 難易度変更否決
#
# @within function core:difficulty/change/adept

# チャット表示
    tellraw @a ["",{"translate":"難易度変更は否決されました。","color":"red"}]
    playsound minecraft:entity.villager.no voice @a ~ ~ ~ 1 1 1

# リセット
    data remove storage core: difficult.change
    scoreboard players reset #World ChangeDifficulty
    scoreboard players set @s ChangeDifficulty 0

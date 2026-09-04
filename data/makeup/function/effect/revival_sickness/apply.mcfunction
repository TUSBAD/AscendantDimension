#> makeup:effect/revival_sickness/apply
#
# 復活良い演出
#
# @within function effect:revival_sickness/apply

# 復活酔い 付与メッセージ
tellraw @s [{"translate":"%1$sは%2$sにかかった！","color":"red","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.RevivalSicknesss"}]}]
playsound minecraft:ambient.crimson_forest.mood_4 ambient @s ~ ~ ~ 1 2 1

#> makeup:effect/doom/apply
#
# 付与時演出
#
# @within function effect:doom/apply

playsound minecraft:item.trident.thunder player @s ~ ~ ~ 5 1 1
title @s times 0t 30t 10t
tellraw @s [{"translate":"%1$sは%2$sを受けた！","color":"red","with":[{"selector":"@s"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}]}]

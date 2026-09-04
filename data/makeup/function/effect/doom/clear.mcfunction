#> makeup:effect/doom/clear
#
# 死の宣告解除演出
#
# @within function effect:doom/clear

playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 5 1.1 1
tellraw @s [{"translate":"%1$sは%2$sから逃れた！","color":"green","with":[{"selector":"@s"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}]}]

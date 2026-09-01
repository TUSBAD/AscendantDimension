#> makeup:effect/revival_sickness/cure
#
# 復活酔い解除演出
#
# @within function effect:revival_sickness/cure

tellraw @s [{"translate":"%1$sは%2$sから回復した！","color":"green","with":[{"selector":"@s","color":"white"},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.RevivalSicknesss"}]}]
playsound block.beacon.power_select player @s ~ ~ ~ 5 1.1 1
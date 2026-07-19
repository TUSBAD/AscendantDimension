#> enemy:skill/enemy/pale_rider/pest_crop
#
# ペストクロップ
#
# @within function enemy:skill/enemy/pale_rider/

me は §4§lペストクロップ§r を唱えた！
execute as @a[distance=..32] if predicate player:effects/is_poison at @s run function player:effect/deadly_poison/
playsound entity.ravager.celebrate master @a[distance=..32] ~ ~ ~ 1 1.8 1

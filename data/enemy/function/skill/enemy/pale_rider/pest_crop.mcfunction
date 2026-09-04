#> enemy:skill/enemy/pale_rider/pest_crop
#
# ペストクロップ
#
# @within function enemy:skill/enemy/pale_rider/

me は §4§lペストクロップ§r を唱えた！
execute as @a[distance=..32] if predicate effect:is_poison at @s run function effect:deadly_poison/
playsound minecraft:entity.ravager.celebrate master @a[distance=..32] ~ ~ ~ 1 1.8 1

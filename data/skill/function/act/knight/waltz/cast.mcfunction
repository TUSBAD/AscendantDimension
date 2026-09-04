#> skill:act/knight/waltz/cast

playsound minecraft:entity.wither.ambient master @a[distance=..16] ~ ~ ~ 1 1.9 0
function skill:act/knight/waltz/summon
execute as @a[distance=..15] at @s run effect give @s strength 10 20

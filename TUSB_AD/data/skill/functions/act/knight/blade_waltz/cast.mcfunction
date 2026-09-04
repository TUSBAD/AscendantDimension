#> skill:act/knight/blade_waltz/cast

playsound entity.wither.ambient master @a[distance=..16] ~ ~ ~ 1 1.9 0
function skill:act/knight/blade_waltz/summon
execute as @a[distance=..15] at @s run effect give @s strength 10 20

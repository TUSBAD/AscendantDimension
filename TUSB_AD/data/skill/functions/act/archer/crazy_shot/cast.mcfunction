#> skill:act/archer/crazy_shot/cast

execute at @s run playsound item.totem.use master @a[distance=..16] ~ ~ ~ 1 1.2 0

execute if score @s ActivatedSkill matches 3290..3299 run function skill:act/archer/crazy_shot/summon

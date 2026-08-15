#> skill:act/archer/magic_bullet_flash/schedule/

data modify storage skill: _ set value false
execute as @e[type=#lib:arrow,tag=madan] at @s run function skill:act/archer/magic_bullet_flash/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/archer/magic_bullet_flash/schedule/ 1t

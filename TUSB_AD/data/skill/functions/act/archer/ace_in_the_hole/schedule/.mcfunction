#> skill:act/archer/ace_in_the_hole/schedule/

data modify storage skill: _ set value false
execute as @e[type=arrow,tag=e_su] at @s run function skill:act/archer/ace_in_the_hole/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/archer/ace_in_the_hole/schedule/ 1t

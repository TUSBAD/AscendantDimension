#> skill:act/knight/the_truth_about_dreams/slash/

execute store result score _ TUSB run time query gametime
execute as @e[tag=MusouPoint] if score @s TUSB = _ TUSB at @s as @e[distance=..30,type=#entity:mob,tag=Enemy] at @s run function skill:act/knight/the_truth_about_dreams/slash/target

execute as @e[tag=MusouPoint] if score @s TUSB <= _ TUSB run kill @s

#> skill:act/white_mage/holy_soul_ignition/schedule/

data modify storage skill: _ set value false
execute as @e[type=snowball,tag=Ignition] at @s run function skill:act/white_mage/holy_soul_ignition/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/white_mage/holy_soul_ignition/schedule/ 1t

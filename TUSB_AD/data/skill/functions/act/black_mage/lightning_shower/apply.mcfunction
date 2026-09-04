#> skill:act/black_mage/lightning_shower/apply

data modify storage score_damage: Argument set value {Damage:80.00,DamageType:"None"}
execute at @e[tag=syawa_] as @e[tag=Enemy,type=#entity:mob,distance=..10] run function score_damage:api/attack
execute as @e[tag=syawa_] at @s run function skill:act/black_mage/lightning_shower/vfx

execute at @e[tag=syawa_] if entity @e[tag=Enemy,type=#entity:mob,distance=..10] as @a[distance=..10] run function skill:act/black_mage/lightning_shower/player

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/black_mage/lightning_shower/apply 10t

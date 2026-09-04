#> skill:act/archer/crazy_shot/hit

execute as @e[tag=crazy] at @s run particle glow ~ ~ ~ 4 -1 4 0.1 300 force
execute as @e[tag=crazy] at @s run function skill:act/archer/crazy_shot/vfx
data modify storage score_damage: Argument set value {Damage:30,DamageType:"None"}
execute at @e[tag=crazy] as @e[tag=Enemy,type=#entity:mob,distance=..10] run function score_damage:api/attack
execute at @e[tag=crazy] as @e[type=player,distance=..10] run tag @s add EnergySave
execute as @e[tag=crazy] as @e[type=player,distance=..10] run function effect:clear_bad_effect
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s minecraft:haste 5 2
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s regeneration 5 3
execute at @e[tag=crazy] as @e[type=player,distance=..10] run effect give @s resistance 5 2
execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/archer/crazy_shot/hit 20t

#> skill:act/summoner/invite_abyss/schedule/

data modify storage skill: _ set value false

execute as @e[type=falling_block,tag=abisu] at @s run function skill:act/summoner/invite_abyss/schedule/fly

execute if data storage skill: {_:true} in minecraft:overworld run schedule function skill:act/summoner/invite_abyss/schedule/ 1t

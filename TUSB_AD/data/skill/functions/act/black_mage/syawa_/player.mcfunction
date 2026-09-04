#> skill:act/black_mage/syawa_/player

execute at @e[distance=..10,type=#entity:mob,tag=Enemy,limit=4] run scoreboard players add @s HealCount 2

function effect:clear_bad_effect

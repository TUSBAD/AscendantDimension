#> skill:act/black_mage/lightning_shower/player

execute at @e[distance=..10,type=#entity:mob,tag=Enemy,limit=4] run scoreboard players add @s HealCount 2

function effect:clear_bad_effect

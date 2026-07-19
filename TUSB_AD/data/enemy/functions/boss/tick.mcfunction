#> enemy:boss/tick
#
#
#
# @within function core:clock/main

execute as @e[type=potion,distance=..3] at @s run function enemy:gimmic/tick/potion_barrier
effect give @s resistance 3 2 true
effect clear @s weakness
effect clear @s slowness

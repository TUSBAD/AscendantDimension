#> entity:in_ground
#
#
#
# @within function

tag @s remove FlyingRequired
tag @s remove TickingRequired
scoreboard players remove @s[tag=NativeTask,tag=!BlastSpark] NativeFlag 1
tag @s remove NativeTask

tag @s[tag=KillInGround] add Garbage
execute if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]

#kill @s[type=minecraft:trident,tag=!BlastSpark]

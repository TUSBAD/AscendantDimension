#> entity:spawn/item_to_spawn
#
#
#
# @within function entity:initialize_entity

summon armor_stand ~ ~ ~ {Tags:[Spawn,ItemToSpawn],DeathTime:19s,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",count:1b,components:{custom_model_data:{floats:[1]},custom_data:{Tags:[[{Tags:[Global,Ground,Shoot,TriangularMan,Main,SpawnParticles],Level:19}]]}}}]}
data modify entity @e[tag=ItemToSpawn,distance=0,limit=1] ArmorItems[3].tag.SpawnEntities set from entity @s Item.tag.SpawnEntities
tag @e[tag=ItemToSpawn,distance=0] remove ItemToSpawn
kill @s

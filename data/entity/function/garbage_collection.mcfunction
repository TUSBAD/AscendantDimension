#> entity:garbage_collection
#
# ガベージコレクション
#
# @within function core:tick

execute if entity @s[tag=!Garbage] run return fail

data modify entity @s {} merge value {Health:0f,Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}],Owner:[I;0,0,0,0]}
data remove entity @s CustomName
kill @s

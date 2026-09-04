#> enemy:ten_seconds
#
#
#
# @within function enemy:one_second

# 個人ロッカー(印板)から音
execute at @e[tag=PersonalLockerSign] run playsound minecraft:block.beacon.ambient block @a[distance=..16]

# 奈落介錯
#execute as @e[type=!player] if predicate lib:in_void run tag @s add Garbage

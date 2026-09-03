#> core:difficulty/change/sleep_in_bed
#
#
#
# @within function player:trigger/sleep_in_bed/

# ピクニックは体力回復する
execute if data storage core: difficult.world{level:"picnic"} run effect give @s minecraft:instant_health 3 9 false

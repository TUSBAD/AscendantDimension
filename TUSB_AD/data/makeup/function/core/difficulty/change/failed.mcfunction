#> makeup:core/difficulty/change/failed
#
#
#
# @within function core:game_menu/show_difficulty_info/check

playsound minecraft:block.chest.locked player @a ~ ~ ~ 1 1
execute rotated ~ 0 positioned ^ ^1.2 ^1 run particle block_marker{block_state:"minecraft:barrier"} ~ ~ ~ 0 0 0 1 0 force
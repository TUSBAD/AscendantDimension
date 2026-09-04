#> player:inventory_event/item_replace/
# インベントリに入手したときの処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 古いCanPlaceOn -> "minecraft:all"
execute if entity @s[advancements={player:inventory_event/item_replace={old_can_place_on_all=true}}] run function player:inventory_event/item_replace/old_can_place_on_all

## ハロウィンヘッドをくりぬく！
execute if entity @s[advancements={player:inventory_event/item_replace={carve_halloween=true}}] run function player:inventory_event/item_replace/carve_halloween

# くてぅるあー
execute if entity @s[advancements={player:inventory_event/item_replace={cthulhu_lure=true}}] run function player:inventory_event/item_replace/cthulhu_lure

# エンド剣
execute if entity @s[advancements={player:inventory_event/item_replace={end_of_end=true}}] run function player:inventory_event/item_replace/end_of_end

# 入れ食い8
execute if entity @s[advancements={player:inventory_event/item_replace={high_lure_change=true}}] run function player:inventory_event/item_replace/high_lure_change

# ネザライト全能
execute if entity @s[advancements={player:inventory_event/item_replace={no_got_return=true}}] run function player:inventory_event/item_replace/no_god

# TLE印判
execute if entity @s[advancements={player:inventory_event/item_replace={tl_sign_stand=true}}] run function player:inventory_event/item_replace/tl_sign_stand

# 進捗戻す
advancement revoke @s only player:inventory_event/item_replace

#> item:instant_item/
#
# 即時アイテム分岐
#
# @within advancement item:instant_item

# 保存
data modify storage item: InstantInventory set from entity @s Inventory

#RecoverHP
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverHP run function item:instant_item/recover_hp
#RecoverMP
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverMP run function item:instant_item/recover_mp
execute if data storage item: InstantInventory[{id:"minecraft:chorus_fruit"}] run function item:instant_item/recover_mp
#RecoverHB
execute if data storage item: InstantInventory[].tag.InstantEffect.RecoverHB run function item:instant_item/recover_hb

# 削除
data remove storage item: InstantInventory
clear @s mushroom_stew{InstantEffect:{}}
clear @s #item:stained_glass_pane{InstantEffect:{}}
clear @s chorus_fruit
#トリガー解除
advancement revoke @s only item:instant_item
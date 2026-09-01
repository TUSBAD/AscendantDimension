#> item:instant_item/recover_mp
#
# インスタントMP回復
#
# @within function item:instant_item/


data modify storage calc: List set value []
data modify storage calc: List append from storage item: InstantInventory[].tag.InstantEffect.RecoverMP
data modify storage calc: List append from storage item: InstantInventory[{id:"minecraft:chorus_fruit"}]
execute store result score _ _ run function calc:list/sum/x1
scoreboard players operation @s MP += _ _
scoreboard players operation @s MP < @s MPMax
function skill:mp/bar/set

# 演出
function makeup:skill/act/common/mp_recovery/act0
#> player:death_item_drop/tomb
#
# 墓を生み出すんごね
#
# @within function player:death_item_drop/do

# 墓を生成
    execute in area:control run data modify block 3 1 3 Items set value []
    # アイテムを直接生成
        #execute in area:control run data modify block 3 1 3 Items append value {id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":{"floats":[1000]},"minecraft:unbreakable":{},"minecraft:item_name":"{\"translate\":\"<死んだプレイヤーの名前>の墓\",\"color\":\"#FFFFFF\",\"bold\":true,\"italic\":false}","minecraft:lore":["{\"translate\":\"名前が彫り込まれた者でないと\",\"color\":\"#CCCCCC\",\"italic\":false}","{\"translate\":\"掘り起こす事は出来ないようだ。\",\"color\":\"#CCCCCC\",\"italic\":false}","[{\"text\":\"\",\"color\":\"white\",\"italic\":false},{\"text\":\"C\",\"font\":\"icon\",\"color\":\"light_purple\"},{\"text\":\" 墓掘り\"}]","{\"text\":\"---TUSBMemory---\",\"obfuscated\":true,\"color\":\"gray\",\"italic\":false}"],"minecraft:custom_data":"{CustomAttributes:1b,Tomb:1b,Skill:{Type:\"TUSBMemory\",Initializing:1b,Job:\"共通\",Name:\"墓掘り\",Level:1,Interval:0,Trigger:\"スニークする\",Count:1}}"}}
        execute in area:control run data modify block 3 1 3 Items append value {id:"minecraft:stone_sword",count:1,components:{}}
    # 墓をデータを取得
        data modify block 3 1 3 Items[0].components."minecraft:custom_data".DeathInventory.Inventory set from storage item: Items.Inventory
        data modify block 3 1 3 Items[0].components."minecraft:custom_data".DeathInventory.equipment set from storage item: Items.equipment
        data modify block 3 1 3 Items[0].components."minecraft:custom_data".DeathUUID set from entity @s UUID
        clear @s
execute in area:control run tellraw @a {block:"3 1 3",nbt:"Items[0].components",color: "gold"}
# 名前を入れる
    item modify block 3 1 3 container.0 {"function":"set_name","name":{"translate":"%sの墓","color":"white","bold":true,"italic":false,"with":[{"selector":"@s","bold":false,"color":"yellow"}]},"entity":"this",target:"item_name"}

# Oh_my_datに入れる
    execute in area:control run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from block 3 1 3 Items[0]

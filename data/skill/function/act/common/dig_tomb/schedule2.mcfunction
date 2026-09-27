#> skill:act/common/dig_tomb/schedule2
#
# スケジュール起動
#
# @within function skill:act/common/dig_tomb/schedule1

# 現在の所持品を取得
    data modify storage item: NowInventory.Inventory set from entity @s Inventory
    data modify storage item: NowInventory.equipment.head set from entity @s equipment.head
    data modify storage item: NowInventory.equipment.chest set from entity @s equipment.chest
    data modify storage item: NowInventory.equipment.legs set from entity @s equipment.legs
    data modify storage item: NowInventory.equipment.feet set from entity @s equipment.feet
    data modify storage item: NowInventory.equipment.offhand set from entity @s equipment.offhand

# 墓のアイテムを取得
    data modify storage item: DeathInventory set from entity @s SelectedItem.components."minecraft:custom_data".DeathInventory
    data modify storage item: DeathInventory.Set set value []

    tellraw @a {"nbt":"DeathInventory","storage": "item:","color": "blue"}
# アイテム置換
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:0b}]
    data modify storage item: DeathInventory.Slot set value 0b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:1b}]
    data modify storage item: DeathInventory.Slot set value 1b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:2b}]
    data modify storage item: DeathInventory.Slot set value 2b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:3b}]
    data modify storage item: DeathInventory.Slot set value 3b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:4b}]
    data modify storage item: DeathInventory.Slot set value 4b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:5b}]
    data modify storage item: DeathInventory.Slot set value 5b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:6b}]
    data modify storage item: DeathInventory.Slot set value 6b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:7b}]
    data modify storage item: DeathInventory.Slot set value 7b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:8b}]
    data modify storage item: DeathInventory.Slot set value 8b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:9b}]
    data modify storage item: DeathInventory.Slot set value 9b
    tellraw @a {"nbt":"DeathInventory.Set","storage": "item:","color": "red"}
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:10b}]
    data modify storage item: DeathInventory.Slot set value 10b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:11b}]
    data modify storage item: DeathInventory.Slot set value 11b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:12b}]
    data modify storage item: DeathInventory.Slot set value 12b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:13b}]
    data modify storage item: DeathInventory.Slot set value 13b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:14b}]
    data modify storage item: DeathInventory.Slot set value 14b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:15b}]
    data modify storage item: DeathInventory.Slot set value 15b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:16b}]
    data modify storage item: DeathInventory.Slot set value 16b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:17b}]
    data modify storage item: DeathInventory.Slot set value 17b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:18b}]
    data modify storage item: DeathInventory.Slot set value 18b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:19b}]
    data modify storage item: DeathInventory.Slot set value 19b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:20b}]
    data modify storage item: DeathInventory.Slot set value 20b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:21b}]
    data modify storage item: DeathInventory.Slot set value 21b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:22b}]
    data modify storage item: DeathInventory.Slot set value 22b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:23b}]
    data modify storage item: DeathInventory.Slot set value 23b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:24b}]
    data modify storage item: DeathInventory.Slot set value 24b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:25b}]
    data modify storage item: DeathInventory.Slot set value 25b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:26b}]
    data modify storage item: DeathInventory.Slot set value 26b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:27b}]
    data modify storage item: DeathInventory.Slot set value 27b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:28b}]
    data modify storage item: DeathInventory.Slot set value 28b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:29b}]
    data modify storage item: DeathInventory.Slot set value 29b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:30b}]
    data modify storage item: DeathInventory.Slot set value 30b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:31b}]
    data modify storage item: DeathInventory.Slot set value 31b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:32b}]
    data modify storage item: DeathInventory.Slot set value 32b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:33b}]
    data modify storage item: DeathInventory.Slot set value 33b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:34b}]
    data modify storage item: DeathInventory.Slot set value 34b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.Inventory[{Slot:35b}]
    data modify storage item: DeathInventory.Slot set value 35b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.equipment.feet
    data modify storage item: DeathInventory.Slot set value 100b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.equipment.legs
    data modify storage item: DeathInventory.Slot set value 101b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.equipment.chest
    data modify storage item: DeathInventory.Slot set value 102b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.equipment.head
    data modify storage item: DeathInventory.Slot set value 103b
    function skill:act/common/dig_tomb/act1
    data modify storage item: DeathInventory.Set append from storage item: DeathInventory.equipment.offhand
    data modify storage item: DeathInventory.Slot set value -106b
    function skill:act/common/dig_tomb/act1

# 今持っているアイテムをマインカートで吐き出す
    summon chest_minecart ~ ~ ~
    data modify entity @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1] Items set from storage item: NowInventory.Inventory
    kill @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:27b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:28b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:29b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:30b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:31b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:32b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:33b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:34b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.Inventory[{Slot:35b}]
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.equipment.head
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.equipment.chest
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.equipment.legs
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.equipment.feet
    data modify storage item: DeathInventory.Armor append from storage item: NowInventory.equipment.offhand
    data modify storage item: DeathInventory.Armor[0].Slot set value 0b
    data modify storage item: DeathInventory.Armor[1].Slot set value 1b
    data modify storage item: DeathInventory.Armor[2].Slot set value 2b
    data modify storage item: DeathInventory.Armor[3].Slot set value 3b
    data modify storage item: DeathInventory.Armor[4].Slot set value 4b
    data modify storage item: DeathInventory.Armor[5].Slot set value 5b
    data modify storage item: DeathInventory.Armor[6].Slot set value 6b
    data modify storage item: DeathInventory.Armor[7].Slot set value 7b
    data modify storage item: DeathInventory.Armor[8].Slot set value 8b
    data modify storage item: DeathInventory.Armor[9].Slot set value 9b
    data modify storage item: DeathInventory.Armor[10].Slot set value 10b
    data modify storage item: DeathInventory.Armor[11].Slot set value 11b
    data modify storage item: DeathInventory.Armor[12].Slot set value 12b
    data modify storage item: DeathInventory.Armor[13].Slot set value 13b
    summon chest_minecart ~ ~ ~
    data modify entity @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1] Items set from storage item: DeathInventory.Armor
    kill @e[type=chest_minecart,distance=..0.01,sort=nearest,limit=1]

# リセット
    data remove storage item: Items
    data remove storage item: Slot
    data remove storage item: DeathInventory
    data remove storage item: NowInventory
    tag @s remove DigTomb

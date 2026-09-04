#> area:dimension/nether/athletic/bird_cage/modify_elytra
# エリトラを上手く調整するやつ
### Copyright © 2022 赤石愛

execute if data entity @s {FallDistance:0f} unless data entity @s {FallFlying:1b} run item replace entity @s armor.chest with minecraft:elytra[damage=432,unbreakable={},lore=['{"text":"§f装備して"}','{"text":"§f§l落下中に§fジャンプキー"}','{"text":"§fで滑空できるよ！"}','{"text":"§fそれでも飛べないときは"}','{"text":"§fリログで直ります。"}'],custom_data={TrialItem:1b}]
execute unless data entity @s {FallDistance:0f} run item replace entity @s armor.chest with minecraft:elytra[damage=432,unbreakable={},lore=['{"text":"§f装備して"}','{"text":"§f§l落下中に§fジャンプキー"}','{"text":"§fで滑空できるよ！"}','{"text":"§fそれでも飛べないときは"}','{"text":"§fリログで直ります。"}'],custom_data={TrialItem:1b}]

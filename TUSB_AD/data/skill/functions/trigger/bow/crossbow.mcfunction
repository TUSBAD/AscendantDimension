#> job:trigger/bow/crossbow
# クロスボウを使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# クロスボウ用に内容を変更

### エンチェイス
execute as @s[tag=EnChase] run function skill:act/archer/enchase/shoot/
execute as @s[scores={CurrentMode=3200..3209}] run function skill:act/archer/stakes_fire/shoot
execute as @s[scores={CurrentMode=3210..3219}] run function skill:act/archer/chain_arrow/shoot
execute as @s[scores={CurrentMode=3230..3239}] run function skill:act/archer/blast_shot/shoot
execute as @s[scores={CurrentMode=3240..3249}] run function skill:act/archer/bird_strike/shoot
execute as @s[scores={CurrentMode=3250..3259}] run function skill:act/archer/ghast_cannon/shoot
execute as @s[scores={CurrentMode=3260..3269}] run function skill:act/archer/fatal_shot/shoot
execute as @s[scores={CurrentMode=3270..3279}] run function skill:act/archer/magic_bullet_flash/shoot
execute as @s[scores={CurrentMode=3280..3289}] run function skill:act/archer/ace_in_the_hole/shoot

# 拡散エンチャントがついていたら更に処理する
# マナはしっかりと3回分消費します

execute if data entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:multishot"}] run function job:trigger/bow/crossbow_multishot
execute if data entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:multishot"}] run function job:trigger/bow/crossbow_multishot

scoreboard players reset @s UseCrossBow

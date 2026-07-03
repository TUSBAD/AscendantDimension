#> effects:invisible/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.



### エーテル Lv1~3
execute if entity @s[advancements={effects:invisible={ether_1=true}}] run function effects:ether/1
execute if entity @s[advancements={effects:invisible={ether_2=true}}] run function effects:ether/2
execute if entity @s[advancements={effects:invisible={ether_3=true}}] run function effects:ether/3

### エリクサー Lv4~5
execute if entity @s[advancements={effects:invisible={elixir_1=true}}] run function effects:elixir/1
execute if entity @s[advancements={effects:invisible={elixir_2=true}}] run function effects:elixir/2

### 聖水 Lv6
execute if entity @s[advancements={effects:invisible={holywater=true}}] run function effects:doom/clear


## Lv 8~16 特殊デバフ
execute if entity @s[predicate=effects:too_bad_effect,scores={LiveTime=1..},predicate=entity:player] run function effects:too_bad_effect

## Lv 20~23 難易度選択
execute if entity @s[advancements={effects:invisible={another=true}}] run function core:difficulty/select/another
execute if entity @s[advancements={effects:invisible={casual=true}}] run function core:difficulty/select/casual
execute if entity @s[advancements={effects:invisible={picnic=true}}] run function core:difficulty/select/picnic
execute if entity @s[advancements={effects:invisible={nightmare=true}}] run function core:difficulty/select/nightmare

### 黄金酒の聖水 Lv25
execute if entity @s[advancements={effects:invisible={goldwater=true}}] run function effects:doom_ex/clear

### リコール Lv30
execute if entity @s[advancements={effects:invisible={recallpotion=true}}] run function effects:recall_potion/give

### 死の宣告 Lv70
execute if entity @s[advancements={effects:invisible={doom=true}},tag=!Doom] run function effects:doom/give

### 強化死の宣告 Lv71

## Lv 72~79 特殊デバフ解除
execute if entity @s[advancements={effects:invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effects:doom/escape
execute if entity @s[advancements={effects:invisible={anti_doom=true}}] if entity @s[tag=Curse] run function effects:curse/cure
execute if entity @s[advancements={effects:invisible={anti_burn=true}}] if score @s BurnCount matches 0.. run function effects:burn/cure
execute if entity @s[advancements={effects:invisible={anti_freeze=true}}] if entity @s[tag=Freeze] run function effects:freeze/cure
execute if entity @s[advancements={effects:invisible={anti_palsy=true}}] if score @s PalsyLevel matches 0.. run function effects:palsy/cure
execute if entity @s[advancements={effects:invisible={anti_confuse=true}}] if score @s ConfuseCount matches 0.. run function effects:confuse/cure
execute if entity @s[advancements={effects:invisible={anti_curse=true}}] if entity @s[tag=Curse] run function effects:curse/cure
execute if entity @s[advancements={effects:invisible={anti_virus=true}}] if score @s VirusCount matches 0.. run function effects:virus/cure
execute if entity @s[advancements={effects:invisible={anti_tnt=true}}] if score @s TntCount matches 0.. run function effects:tnt/cure
execute if entity @s[advancements={effects:invisible={anti_pale=true}}] if score @s PaleLevel matches 0.. run function effects:pale/cure

### 致死の宣告 Lv110
execute if entity @s[advancements={effects:invisible={doom_ex=true}},tag=!DoomEx] run function effects:doom_ex/give
### 即死の宣告 Lv115
execute if entity @s[advancements={effects:invisible={death_doom=true}},tag=!DeathDoom] run function effects:death_doom/give
### 魔力浸食 Lv120
execute if entity @s[advancements={effects:invisible={mana_erosion=true}},tag=!ManaErosion] run function effects:mana_erosion/give

## Lv 100 温泉入浴
execute if entity @s[advancements={effects:invisible={hot_spring=true}}] run function effects:hot_spring/apply

effect clear @s minecraft:invisibility
advancement revoke @s only effects:invisible

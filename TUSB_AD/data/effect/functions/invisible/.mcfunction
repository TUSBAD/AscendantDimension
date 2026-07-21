#> effect:invisible/
# 透明化がかかっている場合、それに応じて特殊効果をかける
#
#
# @within function effect:invisible/

## Lv 8~16/Lv 70~71/Lv 110~120 特殊デバフ
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[predicate=effect:too_bad_effect,scores={Age=1..},predicate=entity:player] run function effect:too_bad_effect
scoreboard players set @s ResistLock 1

### エーテル Lv1~3
execute if entity @s[advancements={effect:invisible={ether_1=true}}] run function effect:ether/1
execute if entity @s[advancements={effect:invisible={ether_2=true}}] run function effect:ether/2
execute if entity @s[advancements={effect:invisible={ether_3=true}}] run function effect:ether/3

### エリクサー Lv4~5
execute if entity @s[advancements={effect:invisible={elixir_1=true}}] run function effect:elixir/1
execute if entity @s[advancements={effect:invisible={elixir_2=true}}] run function effect:elixir/2

### 聖水 Lv6
execute if entity @s[advancements={effect:invisible={holywater=true}}] run function effect:doom/clear

## Lv 20~23 難易度選択
execute if entity @s[advancements={effect:invisible={another=true}}] run function core:difficulty/select/another
execute if entity @s[advancements={effect:invisible={casual=true}}] run function core:difficulty/select/casual
execute if entity @s[advancements={effect:invisible={picnic=true}}] run function core:difficulty/select/picnic
execute if entity @s[advancements={effect:invisible={nightmare=true}}] run function core:difficulty/select/nightmare

### 黄金酒の聖水 Lv25
execute if entity @s[advancements={effect:invisible={goldwater=true}}] run function effect:doom_ex/clear

### リコール Lv30
execute if entity @s[advancements={effect:invisible={recallpotion=true}}] run function effect:recall_potion/give

## Lv 72~79 特殊デバフ解除
execute if entity @s[advancements={effect:invisible={anti_doom=true}}] if score @s Doom matches 0.. run function effect:doom/clear
execute if entity @s[advancements={effect:invisible={anti_doom=true}}] if entity @s[tag=Curse] run function effect:curse/cure
execute if entity @s[advancements={effect:invisible={anti_burn=true}}] if score @s BurnCount matches 0.. run function effect:burn/cure
execute if entity @s[advancements={effect:invisible={anti_freeze=true}}] if entity @s[tag=Freeze] run function effect:freeze/cure
execute if entity @s[advancements={effect:invisible={anti_palsy=true}}] if score @s PalsyLevel matches 0.. run function effect:palsy/cure
execute if entity @s[advancements={effect:invisible={anti_confuse=true}}] if score @s ConfuseCount matches 0.. run function effect:confuse/cure
execute if entity @s[advancements={effect:invisible={anti_curse=true}}] if entity @s[tag=Curse] run function effect:curse/cure
execute if entity @s[advancements={effect:invisible={anti_virus=true}}] if score @s VirusCount matches 0.. run function effect:virus/cure
execute if entity @s[advancements={effect:invisible={anti_tnt=true}}] if score @s TntCount matches 0.. run function effect:tnt/cure
execute if entity @s[advancements={effect:invisible={anti_pale=true}}] if score @s PaleLevel matches 0.. run function effect:pale/cure


## Lv 100 温泉入浴
execute if entity @s[advancements={effect:invisible={hot_spring=true}}] run function effect:hot_spring/apply

effect clear @s minecraft:invisibility
advancement revoke @s only effect:invisible

#> skill:act/summoner/summon_golem/
# ゴーレムを召喚(6060)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変更点: 防具強度を追加、追跡距離の増加、3分経過で自動消滅

playsound minecraft:entity.ender_dragon.hurt master @a[distance=..16] ~ ~ ~ 1 0.5 0
particle minecraft:explosion ~ ~1 ~ 0.5 1 0.5 0.5 30 force

### リメイク：HP少しアップ
summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:3600,Tags:["CooldownRequired"],CustomName:'"(ペット)ゴーレム"',CustomNameVisible:true,ArmorItems:[{id:"minecraft:iron_ingot",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s},{id:"minecraft:projectile_protection",lvl:10s}]}},{},{},{id:"minecraft:snowball",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"minecraft:follow_range",Base:48d},{Name:"minecraft:movement_speed",Base:0.32d},{Name:"minecraft:armor",Base:20d},{Name:"minecraft:armor_toughness",Base:10d},{Name:"minecraft:knockback_resistance",Base:1d},{Name:"minecraft:max_health",Base:100d}],Health:100f,Team:FriendlyTeam,PlayerCreated:true,DeathLootTable:"minecraft:empty"}

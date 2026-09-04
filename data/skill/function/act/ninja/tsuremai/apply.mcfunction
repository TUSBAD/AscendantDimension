#> skill:act/ninja/tsuremai/apply
### 流し斬りがヒットした敵に効果をかける
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# あまりにも強すぎるのでTLEでの連舞はナーフする

# multiの部分を0.3から0.2へ

scoreboard players add @s Tsuremai 1
scoreboard players set @s NinjaTime 2

execute if score _ ActivatedSkill matches 2212..2219 if score @s Tsuremai matches 16.. run scoreboard players set @s Tsuremai 15
execute if score _ ActivatedSkill matches 2211 if score @s Tsuremai matches 11.. run scoreboard players set @s Tsuremai 10
execute if score _ ActivatedSkill matches 2210 if score @s Tsuremai matches 6.. run scoreboard players set @s Tsuremai 5

playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 1 1.4 0
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

title @s times 0 30 10
title @s subtitle {"translate":"                            %1$s HIT!","with":[{"score":{"name":"*","objective":"Tsuremai"}}],"color":"red","italic":true,"bold":true}
title @s title {"text":""}

### (base + Tsuremai * 2) * (1 + Tsuremai * 0.3)
###   +2   +4   +6                    +30
### +30% +60% +90%                  +450%

attribute @s minecraft:attack_damage modifier remove tusb:tsuremai
attribute @s[scores={Tsuremai=1}] minecraft:attack_damage modifier add tusb:tsuremai 2.0 add_value
attribute @s[scores={Tsuremai=2}] minecraft:attack_damage modifier add tusb:tsuremai 4.0 add_value
attribute @s[scores={Tsuremai=3}] minecraft:attack_damage modifier add tusb:tsuremai 6.0 add_value
attribute @s[scores={Tsuremai=4}] minecraft:attack_damage modifier add tusb:tsuremai 8.0 add_value
attribute @s[scores={Tsuremai=5}] minecraft:attack_damage modifier add tusb:tsuremai 10.0 add_value
attribute @s[scores={Tsuremai=6}] minecraft:attack_damage modifier add tusb:tsuremai 12.0 add_value
attribute @s[scores={Tsuremai=7}] minecraft:attack_damage modifier add tusb:tsuremai 14.0 add_value
attribute @s[scores={Tsuremai=8}] minecraft:attack_damage modifier add tusb:tsuremai 16.0 add_value
attribute @s[scores={Tsuremai=9}] minecraft:attack_damage modifier add tusb:tsuremai 18.0 add_value
attribute @s[scores={Tsuremai=10}] minecraft:attack_damage modifier add tusb:tsuremai 20.0 add_value
attribute @s[scores={Tsuremai=11}] minecraft:attack_damage modifier add tusb:tsuremai 22.0 add_value
attribute @s[scores={Tsuremai=12}] minecraft:attack_damage modifier add tusb:tsuremai 24.0 add_value
attribute @s[scores={Tsuremai=13}] minecraft:attack_damage modifier add tusb:tsuremai 27.0 add_value
attribute @s[scores={Tsuremai=14}] minecraft:attack_damage modifier add tusb:tsuremai 28.0 add_value
attribute @s[scores={Tsuremai=15}] minecraft:attack_damage modifier add tusb:tsuremai 30.0 add_value

attribute @s minecraft:attack_damage modifier remove tusb:tsuremai_multiplier
attribute @s[scores={Tsuremai=1}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 0.2 add_multiplied_total
attribute @s[scores={Tsuremai=2}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 0.4 add_multiplied_total
attribute @s[scores={Tsuremai=3}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 0.6 add_multiplied_total
attribute @s[scores={Tsuremai=4}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 0.8 add_multiplied_total
attribute @s[scores={Tsuremai=5}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 1.0 add_multiplied_total
attribute @s[scores={Tsuremai=6}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 1.2 add_multiplied_total
attribute @s[scores={Tsuremai=7}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 1.4 add_multiplied_total
attribute @s[scores={Tsuremai=8}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 1.6 add_multiplied_total
attribute @s[scores={Tsuremai=9}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 1.8 add_multiplied_total
attribute @s[scores={Tsuremai=10}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 2.0 add_multiplied_total
attribute @s[scores={Tsuremai=11}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 2.2 add_multiplied_total
attribute @s[scores={Tsuremai=12}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 2.4 add_multiplied_total
attribute @s[scores={Tsuremai=13}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 2.6 add_multiplied_total
attribute @s[scores={Tsuremai=14}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 2.8 add_multiplied_total
attribute @s[scores={Tsuremai=15}] minecraft:attack_damage modifier add tusb:tsuremai_multiplier 3.0 add_multiplied_total

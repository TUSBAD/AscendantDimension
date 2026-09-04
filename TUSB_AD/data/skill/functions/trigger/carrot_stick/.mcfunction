#> job:trigger/carrot_stick/
# ニンジン棒を使った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.
execute as @s[scores={CurrentMode=2250..2259}] run function skill:act/ninja/taiso_shinyo/spell
execute as @s[scores={CurrentMode=2270..2279}] run function skill:act/ninja/syungokusatsu/carrot/spell
execute as @s[scores={CurrentMode=3290..3299}] run function skill:act/archer/crazy_shot/spell
execute as @s[scores={CurrentMode=4200..4209}] run function skill:act/white_mage/cure/spell
execute as @s[scores={CurrentMode=4240..4249}] run function skill:act/white_mage/tenki/spell
execute as @s[scores={CurrentMode=4250..4259}] run function skill:act/white_mage/holy_shower/spell
execute as @s[scores={CurrentMode=4260..4269}] run function skill:act/white_mage/sacred_aura/spell
execute as @s[scores={CurrentMode=5220..5229}] run function skill:act/black_mage/thunder_bolt/spell
execute as @s[scores={CurrentMode=5230..5239}] run function skill:act/black_mage/geo_crush/spell
execute as @s[scores={CurrentMode=5240..5249}] run function skill:act/black_mage/drain/spell
execute as @s[scores={CurrentMode=5250..5259}] run function skill:act/black_mage/hocus_pocus/spell
execute as @s[scores={CurrentMode=5260..5269}] run function skill:act/black_mage/magical_drain/spell
execute as @s[scores={CurrentMode=5270..5279}] run function skill:act/black_mage/lightning_shower/spell
execute as @s[scores={CurrentMode=5280..5289}] run function skill:act/black_mage/shadow_bolt/spell

execute as @s[scores={CurrentMode=6200..6209}] run function skill:act/summoner/fill/spell
execute as @s[scores={CurrentMode=6210..6219}] run function skill:act/summoner/gold_basin/spell
execute as @s[scores={CurrentMode=6220..6229}] run function skill:act/summoner/deal/spell
execute as @s[scores={CurrentMode=6230..6239}] run function skill:act/summoner/ponpon/spell
execute as @s[scores={CurrentMode=6240..6249}] run function skill:act/summoner/tsuntsun/carrot/spell
execute as @s[scores={CurrentMode=6250..6259}] run function skill:act/summoner/heat_basin/spell
execute as @s[scores={CurrentMode=6260..6269}] run function skill:act/summoner/summon_obsidian/spell
execute as @s[scores={CurrentMode=6270..6279}] run function skill:act/summoner/pompom_firework/spell
execute as @s[scores={CurrentMode=6280..6289}] run function skill:act/summoner/summon_ender_chest/spell
execute as @s[scores={CurrentMode=6290..6299}] run function skill:act/summoner/blast_basin/spell
execute as @s[scores={CurrentMode=6300..6309}] run function skill:act/summoner/summon_petit_black/spell
execute as @s[scores={CurrentMode=6310..6319}] run function skill:act/summoner/tesla_flare/spell
execute as @s[scores={CurrentMode=6320..6329}] run function skill:act/summoner/invite_abyss/spell
execute as @s[scores={CurrentMode=6330..6339}] run function skill:act/summoner/final_catastrophe/spell

scoreboard players reset @s UseCarrotStick

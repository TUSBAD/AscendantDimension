#> job:trigger/hit/
#
# 近接攻撃をした時
#
# @within function player:trigger/tick

## 剣士
# 流し斬り
execute as @s[scores={CurrentMode=1200..1209},predicate=lib:has_sword] run function skill:act/knight/nagashi_giri/hit
# 薙ぎ払い
execute as @s[scores={CurrentMode=1210..1219},predicate=lib:has_sword] run function skill:act/knight/nagi_harai/hit
# 魔人斬り
execute as @s[scores={CurrentMode=1240..1249},predicate=lib:has_sword] run function skill:act/knight/majin_giri/hit
# 斬鉄剣
execute as @s[scores={CurrentMode=1250..1259},predicate=lib:has_sword] run function skill:act/knight/zan_tetsu_ken/hit
# 連舞
execute as @s[scores={CurrentMode=2210..2219}] run function skill:act/ninja/tsuremai/hit
# 瞬獄殺
execute as @s[scores={CurrentMode=2270..2279}] run function skill:act/ninja/syungokusatsu/punch/hit
# 夢想
execute as @s[scores={CurrentMode=1270..1279},predicate=lib:has_sword] run function skill:act/knight/musou/hit
# ブレードワルツ
execute as @s[scores={CurrentMode=1280..1289},predicate=lib:has_sword] run function skill:act/knight/waltz/spell

## 黒魔
# エンアスピル
execute as @s[scores={EnAspir=0..}] run function skill:act/black_mage/enaspir/hit

# レガシー
execute if data entity @s SelectedItem.tag.Legacy run function skill:trigger/hit/legacy/

# リセット
advancement revoke @s only mob_manager:player_hurt_entity
scoreboard players reset _ Damage

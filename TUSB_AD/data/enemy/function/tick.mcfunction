#> enemy:tick
#
# 敵モブtick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function enemy:one_second

# 居縮
execute if entity @s[scores={Isukumi=1..}] run function skill:act/ninja/isukumi/tick

## 狩人
# ルカナントラップ
execute if entity @s[scores={Kasap=1..}] run function skill:act/hunter/kasap_trap/enemy_tick
# ボミオストラップ
execute if entity @s[scores={Decelerate=1..}] run function skill:act/hunter/decelerate_trap/enemy_tick

# 魔法のブロックの共通処理
    execute if entity @s[type=item_frame,tag=MagicBlock] at @s run function skill:act/summoner/magic_block/check

# ボスチーム
    execute if entity @s[team=Boss] at @s run function enemy:boss/tick

# CantTp
    tag @a[tag=CantTp] remove CantTp
    execute at @e[tag=CantTpSmall] run tag @a[distance=..8] add CantTp
    execute at @e[tag=CantTpMedium] run tag @a[distance=..16] add CantTp
    execute at @e[tag=CantTpLarge] run tag @a[distance=..32] add CantTp
    execute at @e[tag=Boss_MarkerC] run tag @a[distance=..70] add CantTp

# カスタム体力へのダメージ処理
    execute if entity @s[predicate=lib:custom_mob] run function enemy:custom_mob/health/

# Logテキストの処理
    execute if entity @s[predicate=lib:log_stand] run function enemy:custom_mob/health/log/display_tick

# 投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
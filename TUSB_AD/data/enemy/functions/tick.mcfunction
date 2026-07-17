#> enemy:tick
#
# 敵モブtick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function enemy:one_second

# 魔法のブロックの共通処理
    execute as @e[type=item_frame,tag=MagicBlock] at @s run function skill:act/summoner/magic_block/check

# ボスチーム
    execute as @e[team=Boss] at @s run function enemy:boss/tick

# CantTp
    tag @a[tag=CantTp] remove CantTp
    execute at @e[tag=CantTpSmall] run tag @a[distance=..8] add CantTp
    execute at @e[tag=CantTpMedium] run tag @a[distance=..16] add CantTp
    execute at @e[tag=CantTpLarge] run tag @a[distance=..32] add CantTp
    execute at @e[tag=Boss_MarkerC] run tag @a[distance=..70] add CantTp

# カスタム体力へのダメージ処理
    execute as @e[tag=TypeChecked] if predicate lib:custom_mob at @s run function enemy:custom_mob/health/

# Logテキストの処理
    execute as @e[tag=TypeChecked] if predicate lib:log_stand at @s run function enemy:custom_mob/health/log/display_tick
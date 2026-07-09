#> mob_manager:tick
#
# MobTick処理
#
# @within function core:tick

# -> 1秒処理
    execute if score #Ticks Count matches 0 run function mob_manager:one_second



## TODO
#execute as @e[type=area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check

# 魔法のブロックの共通処理
    execute as @e[type=item_frame,tag=MagicBlock] at @s run function skill:act/summoner/magic_block/check



# ボスチーム
    execute as @e[team=Boss] at @s run function mob_manager:boss/tick


# 個人ロッカー(印板)
    execute as @e[tag=PersonalLockerSign] at @s run function area:personal_locker/tick/personal_locker_sign

# 盾持ちmob処理
    execute as @e[type=#lib:mob,tag=!ShieldTried,limit=1] run function mob_manager:entity/time_shield/detect_enemy


# CantTp
    tag @a[tag=CantTp] remove CantTp
    execute at @e[tag=CantTpSmall] run tag @a[distance=..8] add CantTp
    execute at @e[tag=CantTpMedium] run tag @a[distance=..16] add CantTp
    execute at @e[tag=CantTpLarge] run tag @a[distance=..32] add CantTp
    execute at @e[tag=Boss_MarkerC] run tag @a[distance=..70] add CantTp

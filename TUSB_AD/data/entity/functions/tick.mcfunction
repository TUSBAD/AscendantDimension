#> entity:tick
#
# エンティティ全般tick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function entity:one_second

### エンティティ初期化
execute as @e[tag=!Initialized] at @s run function entity:initialize_entity

# 飛翔状態の確認とタイマー移行
execute as @e[type=#entity:has_in_ground] run function entity:has_in_ground/transfer_check

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown
execute as @e[type=#entity:has_in_ground,tag=CooldownRequired,tag=!FlyingObject,nbt={life:1159s,inGround:true}] at @s run function entity:cooldown

# TypeCheck 新しくでてきた敵に色々設定するやつ
    execute as @e[type=!#lib:ignore_type_check,type=!area_effect_cloud,tag=!TypeChecked] at @s run function mob_manager:entity/type_check

# スポナー更新
    execute as @e[tag=Spawner,type=armor_stand,scores={SpawnerId=-2147483648..2147483647}] at @s run function asset_manager:spawner/

# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
    execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}

# leap(跳躍妨害)
    execute at @e[tag=leap] run effect give @a[distance=..7,predicate=player:effects/is_jump_boost] levitation 10 236
    execute at @e[tag=leap] run effect clear @a[distance=..32] jump_boost

# カスタム体力へのダメージ処理
    execute as @e if predicate lib:custom_mob at @s run function mob_manager:custom_mob/health/

# Logテキストの処理
    execute as @e if predicate lib:log_stand at @s run function mob_manager:custom_mob/health/log/display_tick
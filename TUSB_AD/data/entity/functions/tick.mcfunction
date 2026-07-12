#> entity:tick
#
# エンティティ全般tick処理
#
# @within function core:tick

# -> 1秒処理
execute if score #Ticks Count matches 0 run function entity:one_second

### エンティティ初期化
execute as @e[tag=!TypeChecked] at @s run function entity:initialize_entity

# 飛翔状態の確認とタイマー移行
execute as @e[type=#entity:has_in_ground] run function entity:has_in_ground/transfer_check

### エンティティPortalCooldownチェック
execute as @e[tag=CooldownRequired,nbt={PortalCooldown:0}] at @s run function entity:cooldown
execute as @e[type=#entity:has_in_ground,tag=CooldownRequired,tag=!FlyingObject,nbt={life:1159s,inGround:true}] at @s run function entity:cooldown

# スポナー更新
    execute as @e[tag=Spawner,type=armor_stand,scores={SpawnerId=-2147483648..2147483647}] at @s run function asset_manager:spawner/

# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
    execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}

# leap(跳躍妨害)
    execute at @e[tag=leap] run effect give @a[distance=..7,predicate=player:effects/is_jump_boost] levitation 10 236
    execute at @e[tag=leap] run effect clear @a[distance=..32] jump_boost

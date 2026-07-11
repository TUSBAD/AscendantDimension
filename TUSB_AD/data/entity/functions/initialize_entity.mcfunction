#> entity:initialize_entity
#
# エンティティ初期化処理
#
# @within function entity:tick


### 飛翔物属性付与
execute unless entity @s[type=!#entity:projectiles,tag=!DamageProjectile] run function entity:initialize_projectile
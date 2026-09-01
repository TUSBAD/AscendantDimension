#> enemy:custom_mob/health/damage
#
# ダメージ処理
#
# @within function enemy:custom_mob/health/

# 減算
scoreboard players operation @s CustomHealth -= @s Damage

# 表示
function enemy:custom_mob/health/log/summon/damage

# 演出
function makeup:enemy/custom_mob/damage

# HPが0になったら死亡処理
execute if score @s CustomHealth matches ..0 run function enemy:custom_mob/death/

# リセット
scoreboard players reset @s Damage

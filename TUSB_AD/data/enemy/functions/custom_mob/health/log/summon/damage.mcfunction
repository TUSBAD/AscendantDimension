#> enemy:custom_mob/health/log/summon/damage
#
# 通常ダメージ量の表示
#
# @within function enemy:custom_mob/health/damage

# 召喚
    summon minecraft:text_display ~ ~ ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Tags:["LogDisplay", "DamageLog", "ShortShow","TypeChecked","SystemEntity"]}

# スコアを加算
    scoreboard players operation @s ShowDamage += @s Damage

# @s Damageから文字を設定
    execute in area:control run loot replace block 3 1 3 container.0 loot lib:status_makeup/damage

# 表示
    execute positioned ~ ~ ~ as @e[distance=..0.01,type=minecraft:text_display,tag=DamageLog,limit=1] run function enemy:custom_mob/health/log/show

# タイマー稼働
    execute unless score @s LogRemoveTime matches 1.. run scoreboard players set @s LogRemoveTime 1

# リセット
    execute in area:control run data remove block 3 1 3 Items

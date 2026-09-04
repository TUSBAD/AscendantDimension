#> enemy:custom_mob/health/log/summon/heal
#
# 回復量の表示
#
# @within function enemy:custom_mob/health/heal

# 召喚
    summon minecraft:text_display ~ ~ ~ {see_through:true,background:0,alignment:center,billboard:center,brightness:{block:15,sky:15},text:'""',Tags:["LogDisplay", "HealLog", "ShortShow","TypeChecked","SystemEntity"]}

# @s Healから文字を設定
    execute in area:control run loot replace block 3 1 3 container.0 loot lib:status_makeup/heal

# 表示
    execute positioned ~ ~ ~ as @e[distance=..0.01,type=minecraft:text_display,tag=HealLog,limit=1] run function enemy:custom_mob/health/log/show

# リセット
    execute in area:control run data remove block 3 1 3 Items

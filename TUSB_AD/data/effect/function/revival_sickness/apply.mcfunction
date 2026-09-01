#> effect:revival_sickness/apply
#
# 復活酔い
#
# @public

# 効果中なら効果時間2倍
scoreboard players set _ _ 1
execute if score @s RevivalSicknessTimer matches 1.. run scoreboard players operation _ _ += _ _

# 持続時間を設定 難易度で効果時間が変化（デバッグ:0s、ピクニック:2s、カジュアル:4s、エキスパート:8s）
execute if data storage core: difficult.world{level:"debug"} run scoreboard players set @s RevivalSicknessTimer 0
execute if data storage core: difficult.world{level:"picnic"} run scoreboard players set @s RevivalSicknessTimer 2
execute if data storage core: difficult.world{level:"casual"} run scoreboard players set @s RevivalSicknessTimer 4
execute if data storage core: difficult.world{level:"another"} run scoreboard players set @s RevivalSicknessTimer 8
execute if data storage core: difficult.world{level:"ascendant"} run scoreboard players set @s RevivalSicknessTimer 10

# マルチなら効果時間2倍
execute store result score @s _ if entity @a
execute if score @s _ matches 2.. run scoreboard players operation _ _ += _ _

# 倍率を掛ける
scoreboard players operation @s RevivalSicknessTimer *= _ _

# 演出
function makeup:effect/revival_sickness/apply
#> enemy:skill/enemy/boss.advanced/
#
# tag Boss.Advanced 紫発光
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,4]
function api:dice/score

# アスガルズ・ヘルヘイム
# ファンタジスタ・デスオーラ
# ファンタジスタ・デスレイ

execute if score @s Random matches 1 run function enemy:skill/enemy/boss.advanced/asgard_hellheim
execute if score @s Random matches 2 run function enemy:skill/enemy/boss.advanced/fantasista_deathaura
execute if score @s Random matches 3 run function enemy:skill/enemy/boss.advanced/fantasista_deathray

#> enemy:skill/enemy/thanatos/
#
# タナトス
#
# @within function enemy:skill/invoke

# 乱数を取得
data modify storage math: in set value [1,3]
function api:dice/score

# デスサイス・ソウルテイカー
# ヘルヘイム・デスクロップ

execute if score @s Random matches 1 run function enemy:skill/enemy/thanatos/death_scythe_soul_taker
execute if score @s Random matches 2 run function enemy:skill/enemy/thanatos/hellheim_desklop

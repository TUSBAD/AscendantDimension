#> asset:job/0111.knight_emperor/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.20 append value {name:["§bウォープレリュード"],level:[75],cost:[20],condition:["被ダメージ"],description:["HPを回復しデバフを解除する。"]}

data modify storage asset:skill _.21 append value {name:["§d夢想真説"],level:[100],cost:[300],range:[30],condition:["剣で攻撃"],description:["周囲の敵に大ダメージ。"]}

data modify storage asset:skill data.111 set from storage asset:skill _
data remove storage asset:skill _

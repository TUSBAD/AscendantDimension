#> asset:job/0111.knight_emperor/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.60 set value {name:["§bウォープレリュード"],level:[75],cost:20,description:[["HPを回復しデバフを解除する。"]],condition:"被ダメージ"}
data modify storage asset:skill _.61 set value {name:["§d夢想真説"],level:[100],cost:300,description:[["周囲の敵に大ダメージ。"]],condition:"剣で攻撃",range:[30]}

data modify storage asset:skill data.111 set from storage asset:skill _
data remove storage asset:skill _

#> asset:job/0211.asura/skill_init
#
# 忍者スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.20 set value {name:["§d太素診要"],level:[100],cost:[200],description:[["敵を攻撃し体力を回復させる。"]],condition:"ニンジン付きの棒を持って右クリック"}
data modify storage asset:skill _.21 set value {name:["§d靖妖儺舞"],level:[100],cost:[40],description:[["自身の体力を消耗し、自身が跳躍する度に広範囲にダメージを与える。"]],condition:"スニークする",range:[45]}

data modify storage asset:skill data.211 set from storage asset:skill _
data remove storage asset:skill _

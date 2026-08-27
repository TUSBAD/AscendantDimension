#> asset:job/0221.apsaras/skill_init
#
# 忍者スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.20 append value {name:["§6奥義・瞬獄殺"],level:[100],cost:[100],description:[["左クリック時と右クリック時で効果が異なる。","右クリック時、敵を数秒間その場に拘束する。","左クリック時、最大5回まで発動する連舞を発動する。また、この攻撃は周囲の敵にもダメージを与える。"]],condition:"ニンジン付きの棒を持って右クリック、又は敵を攻撃",range:[15]}

data modify storage asset:skill data.221 set from storage asset:skill _
data remove storage asset:skill _

#> asset:job/0311.deadly_chaser/skill_init
#
# 狩人スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _ append value {name:["§b魔弾一閃"],level:{min:75,max:2147483647},cost:[30],description:[["命中すると広範囲に大ダメージを与える特殊な矢を放つ。"]],condition:["矢を放つ"],range:[45]}
data modify storage asset:skill _ append value {name:["§dエースインザホール"],level:{min:100,max:2147483647},cost:[150],description:[["矢の周囲にいる味方の体力を持続回復し、敵にダメージを与える。着弾時、広範囲の味方の体力を回復し、敵にダメージを与える"]],condition:["矢を放つ"],range:[8]}

data modify storage asset:skill data.311 set from storage asset:skill _
data remove storage asset:skill _

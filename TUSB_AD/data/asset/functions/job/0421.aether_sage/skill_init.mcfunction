#> asset:job/0421.aether_sage/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["§aララバイ"],level:{min:100,max:2147483647},cost:[200],description:[["周囲の味方の移動速度を極端に低下させるが、レイズを除く白魔導士の全てのサポートスキルの効果を付与する。"]],range:[10],duration:[60]}

# モード
data modify storage asset:skill _ append value {name:["§6聖・ソウルイグニッション"],level:{min:100,max:2147483647},cost:[500],description:[["聖なる力を放ち、周囲の敵にダメージを与え、周囲の味方を強化する。"]],condition:["雪玉を投げる"],range:[10]}

data modify storage asset:skill data.421 set from storage asset:skill _
data remove storage asset:skill _

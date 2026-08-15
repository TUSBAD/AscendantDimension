#> asset:job/0411.elementalist/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.60 set value {name:["§b天気雨"],level:[51],cost:20,description:[["雨の降る場所の周囲にいる味方の体力を持続的に回復する。"]],condition:"ニンジン付きの棒を持って右クリック",range:[12]}
data modify storage asset:skill _.61 set value {name:["§dホーリーシャワー"],level:[100],cost:150,description:[["自身の周囲に聖なる力の雨を降らす。"]],condition:"ニンジン付きの棒を持って右クリック",range:[60]}
data modify storage asset:skill _.62 set value {name:["§dセイクリットオーラ"],level:[100],cost:100,description:[["範囲内の敵5体にダメージを与え、味方にバフを付与する"]],condition:"ニンジン付きの棒を持って右クリック",range:[15]}

data modify storage asset:skill data.411 set from storage asset:skill _
data remove storage asset:skill _

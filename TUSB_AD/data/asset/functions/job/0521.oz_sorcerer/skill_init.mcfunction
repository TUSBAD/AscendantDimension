#> asset:job/0521.oz_sorcerer/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 append value {name:["§aマジカルエンゲージ"],level:[75],cost:[90],description:[["自身にマジックシールド、マナリフ、エナジーセーブの効果を付与する"]]}

# モード
data modify storage asset:skill _.20 append value {name:["§6シャドウボルト"],level:[100],cost:[500],description:[["周囲の敵を一点に集め、超特大ダメージを与える雷を落とす"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill data.521 set from storage asset:skill _
data remove storage asset:skill _

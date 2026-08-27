#> asset:job/0321.day_breaker/skill_init
#
# 狩人スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.20 append value {name:["§6クレイジーショット"],level:[100],cost:[500],description:[["最寄りの敵に大ダメージを与え、持続的に味方に支援効果を与え敵にダメージを与えるフィールドを展開する"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10],duration:[10]}

data modify storage asset:skill data.321 set from storage asset:skill _
data remove storage asset:skill _

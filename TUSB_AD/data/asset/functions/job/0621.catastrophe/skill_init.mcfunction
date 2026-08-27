#> asset:job/0621.catastrophe/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _.20 append value {name:["§6ファイナルカタストロフィ"],level:[100],cost:500,description:[["もっとも近い敵を中心に深淵の魔物を召喚する。召喚された魔物は周囲を一掃する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}

data modify storage asset:skill data.621 set from storage asset:skill _
data remove storage asset:skill _

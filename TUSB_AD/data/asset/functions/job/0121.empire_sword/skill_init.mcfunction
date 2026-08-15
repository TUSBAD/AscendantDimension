#> asset:job/0121.empire_sword/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.40 set value {name:["§aウィルオブナイト"],level:[100],cost:50,description:[["周囲の味方にタクティカルヒールとストライの効果を付与する。"]],range:[15],duration:[60]}

# モード
data modify storage asset:skill _.60 set value {name:["§6ブレードワルツ"],level:[100],cost:500,description:[["発動地点を中心に周囲の敵を攻撃する斬撃を残す。"]],condition:"剣で攻撃",range:[60],duration:[10]}
data modify storage asset:skill data.121 set from storage asset:skill _
data remove storage asset:skill _

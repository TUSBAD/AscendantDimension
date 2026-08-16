#> asset:job/0121.empire_sword/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.40.0 set value {name:["§aウィルオブナイト"],level:100,cost:50,range:15,description:["周囲の味方にタクティカルヒールとストライⅢの効果を付与する。"]}

# モード
data modify storage asset:skill _.60.0 set value {name:["§6ブレードワルツ"],level:100,cost:500,damage:25,range:60,duration:10,condition:["剣で攻撃"],description:["発動地点を中心に周囲の敵を攻撃する斬撃を残す。"]}

data modify storage asset:skill data.121 set from storage asset:skill _
data remove storage asset:skill _

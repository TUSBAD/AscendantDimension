#> asset:job/0511.wizard/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート

# モード
data modify storage asset:skill _ append value {name:["§bマジカルドレイン"],level:{min:75,max:2147483647},cost:80,description:[["付近の敵から体力と魔力を吸い取る。"]],condition:"ニンジン付きの棒を持って右クリック"}

data modify storage asset:skill data.511 set from storage asset:skill _
data remove storage asset:skill _

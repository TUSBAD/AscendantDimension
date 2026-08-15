#> asset:job/0611.dread_lord/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.40 set value {name:["§bツァウバークライス"],level:[51],cost:75,description:[["周辺の召喚したペットの数だけ魔力を回復する。"]]}

# モード
data modify storage asset:skill _.60 set value {name:["§bテスラフレア"],level:[51],cost:70,description:[["自身の位置に敵を引き寄せ硬直させたのちで電子爆発を起こす。ただし小ダメージを受ける。"]],condition:"ニンジン付きの棒を持って右クリック",range:[20]}
data modify storage asset:skill _.61 set value {name:["§dインバイトアビス"],level:[100],cost:60,description:[["もっとも近い敵を中心に深淵の遺物を召喚する。召喚された遺物は最も近い敵に特大ダメージ、周囲の敵に大ダメージを与えヒットした敵のバフを解除する。攻撃成功時、攻撃された敵周囲の味方のデバフを解除しバフと体力回復を付与する"]],condition:"ニンジン付きの棒を持って右クリック",range:[20]}

data modify storage asset:skill data.611 set from storage asset:skill _
data remove storage asset:skill _

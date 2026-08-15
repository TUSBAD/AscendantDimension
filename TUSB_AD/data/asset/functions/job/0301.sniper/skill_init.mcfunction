#> asset:job/0301.sniper/skill_init
#
# 狩人スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 set value {name:["ルカナントラップ","ルカナントラップⅡ","ルカナントラップⅢ"],level:[3,23,43],cost:20,description:[["防御力を下げる罠を設置する。"]],range:[5],duration:[20]}
data modify storage asset:skill _.1 set value {name:["照明弾"],level:[5],cost:25,description:[["照明弾を撃ち上げ、辺りが明るく見えるようにする。"]],range:[30],duration:[60]}
data modify storage asset:skill _.2 set value {name:["ボミオストラップ","ボミオストラップⅡ"],level:[13,33],cost:20,description:[["移動速度を下げる罠を設置する。"]],range:[5],duration:[20]}
data modify storage asset:skill _.3 set value {name:["ワイルドクッキング"],level:[15],cost:5,description:[["手持ちの食材を焼く。"]]}
data modify storage asset:skill _.4 set value {name:["エンチェイス","エンチェイスⅡ"],level:[17,37],cost:5,description:[["自身の次に放つ矢が敵に当たりやすくなる。"]],sneak:{description:[["周囲のプレイヤーの次に放つ矢が敵に当たりやすくなる。"]],range:[15]}}
data modify storage asset:skill _.5 set value {COMMENT:"/* 効果時間がレベルに応じて変化するため配列型に設定&正常に動作しない可能性あり */",name:["レーダーヴィジョン","レーダーヴィジョンⅡ"],level:[18,38],cost:80,description:[["特殊な視点で周囲を偵察する。"]],duration:[2,5]}
data modify storage asset:skill _.6 set value {name:["エナジーセーブ"],level:[35],cost:10,description:[["自身の次に使うスキルの消費MPを半減する。"]],sneak:{description:[["周囲のプレイヤーの次に使うスキルの消費MPを半減する。"]],range:[15]}}
data modify storage asset:skill _.7 set value {name:["ニフラムトラップ"],level:[46],cost:40,description:[["弱く無防備な敵を消し去る罠を設置する。"]],range:[5],duration:[20]}

# モード
data modify storage asset:skill _.20 set value {name:["ステークスファイア","ステークスファイアⅡ","ステークスファイアⅢ"],level:[1,20,40],cost:7,description:[["矢の威力が10倍か0倍になる。"]],condition:"矢を放つ"}
data modify storage asset:skill _.21 set value {name:["チェインアロー","チェインアローⅡ","チェインアローⅢ"],level:[8,28,48],cost:15,description:[["ダメージが周囲に広がる特殊な矢を放つ。"]],condition:"矢を放つ",range:[5,15,25]}
data modify storage asset:skill _.22 set value {name:["ワイルドヒーリング","ワイルドヒーリング+"],level:[10,30],cost:10,description:[["自身の体力を回復する。"],["自身の体力・状態異常を回復する。"]],condition:"食事を取る"}
data modify storage asset:skill _.23 set value {name:["ブラストショット","ブラストショットⅡ"],level:[25,45],cost:5,description:[["爆発する特殊な矢を放つ。"]],condition:"矢を放つ"}
data modify storage asset:skill _.24 set value {name:["バードストライク"],level:[26],cost:5,description:[["敵を墜落させる特殊な矢を放つ。"]],condition:"矢を放つ"}
data modify storage asset:skill _.25 set value {name:["ガストキャノン","ガストキャノンⅡ"],level:[39,49],cost:7,description:[["放った矢を火球に変える。"]],condition:"矢を放つ"}
data modify storage asset:skill _.26 set value {name:["フェイタルショット"],level:[50],cost:100,description:[["周囲の敵を弱体化する特殊な矢を放つ。"]],condition:"矢を放つ",range:[10],duration:[20]}

data modify storage asset:skill data.301 set from storage asset:skill _
data remove storage asset:skill _

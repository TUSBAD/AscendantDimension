#> asset:job/0301.sniper/skill_init
#
# 狩人スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["ルカナントラップ"  ],level:{min:3 ,max:22},cost:[20],description:[["防御力を下げる罠を設置する。"]],range:[5],duration:[20]}
data modify storage asset:skill _ append value {name:["ルカナントラップⅡ"],level:{min:23,max:42},cost:[20],description:[["防御力を下げる罠を設置する。"]],range:[5],duration:[20]}
data modify storage asset:skill _ append value {name:["ルカナントラップⅢ"],level:{min:43,max:2147483647},cost:[20],description:[["防御力を下げる罠を設置する。"]],range:[5],duration:[20]}

data modify storage asset:skill _ append value {name:["照明弾"],level:{min:5,max:2147483647},cost:[25],description:[["照明弾を撃ち上げ、辺りが明るく見えるようにする。"]],range:[30],duration:[60]}

data modify storage asset:skill _ append value {name:["ボミオストラップ"  ],level:{min:13,max:32},cost:[20],description:[["移動速度を下げる罠を設置する。"]],range:[5],duration:[20]}
data modify storage asset:skill _ append value {name:["ボミオストラップⅡ"],level:{min:33,max:2147483647},cost:[20],description:[["移動速度を下げる罠を設置する。"]],range:[5],duration:[20]}

data modify storage asset:skill _ append value {name:["ワイルドクッキング"],level:{min:15,max:2147483647},cost:[5],description:[["手持ちの食材を焼く。"]]}

data modify storage asset:skill _ append value {name:["エンチェイス"  ],level:{min:17,max:36},cost:[5],description:[["自身の次に放つ矢が敵に当たりやすくなる。"]],sneak:{description:[["周囲のプレイヤーの次に放つ矢が敵に当たりやすくなる。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["エンチェイスⅡ"],level:{min:37,max:2147483647},cost:[5],description:[["自身の次に放つ矢が敵に当たりやすくなる。"]],sneak:{description:[["周囲のプレイヤーの次に放つ矢が敵に当たりやすくなる。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["レーダーヴィジョン"  ],level:{min:18,max:37},cost:[80],description:[["特殊な視点で周囲を偵察する。"]],duration:[2]}
data modify storage asset:skill _ append value {name:["レーダーヴィジョンⅡ"],level:{min:38,max:2147483647},cost:[80],description:[["特殊な視点で周囲を偵察する。"]],duration:[5]}

data modify storage asset:skill _ append value {name:["エナジーセーブ"],level:{min:35,max:2147483647},cost:[10],description:[["自身の次に使うスキルの消費MPを半減する。"]],sneak:{description:[["周囲のプレイヤーの次に使うスキルの消費MPを半減する。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["ニフラムトラップ"],level:{min:46,max:2147483647},cost:[40],description:[["弱く無防備な敵を消し去る罠を設置する。"]],range:[5],duration:[20]}

# モード
data modify storage asset:skill _ append value {name:["ステークスファイア"  ],level:{min:1 ,max:19},cost:[7],description:[["矢の威力が10倍か0倍になる。"]],condition:["矢を放つ"]}
data modify storage asset:skill _ append value {name:["ステークスファイアⅡ"],level:{min:20,max:39},cost:[7],description:[["矢の威力が10倍か0倍になる。"]],condition:["矢を放つ"]}
data modify storage asset:skill _ append value {name:["ステークスファイアⅢ"],level:{min:40,max:2147483647},cost:[7],description:[["矢の威力が10倍か0倍になる。"]],condition:["矢を放つ"]}

data modify storage asset:skill _ append value {name:["チェインアロー"  ],level:{min:8 ,max:27},cost:[15],description:[["ダメージが周囲に広がる特殊な矢を放つ。"]],condition:["矢を放つ"],range:[5]}
data modify storage asset:skill _ append value {name:["チェインアローⅡ"],level:{min:28,max:47},cost:[15],description:[["ダメージが周囲に広がる特殊な矢を放つ。"]],condition:["矢を放つ"],range:[15]}
data modify storage asset:skill _ append value {name:["チェインアローⅢ"],level:{min:48,max:2147483647},cost:[15],description:[["ダメージが周囲に広がる特殊な矢を放つ。"]],condition:["矢を放つ"],range:[25]}

data modify storage asset:skill _ append value {name:["ワイルドヒーリング" ],level:{min:10,max:29},cost:[10],description:[["自身の体力を回復する。"],["自身の体力・状態異常を回復する。"]],condition:["食事を取る"]}
data modify storage asset:skill _ append value {name:["ワイルドヒーリング+"],level:{min:30,max:2147483647},cost:[10],description:[["自身の体力を回復する。"],["自身の体力・状態異常を回復する。"]],condition:["食事を取る"]}

data modify storage asset:skill _ append value {name:["ブラストショット"  ],level:{min:25,max:44},cost:[5],description:[["爆発する特殊な矢を放つ。"]],condition:["矢を放つ"]}
data modify storage asset:skill _ append value {name:["ブラストショットⅡ"],level:{min:45,max:2147483647},cost:[5],description:[["爆発する特殊な矢を放つ。"]],condition:["矢を放つ"]}

data modify storage asset:skill _ append value {name:["バードストライク"],level:{min:26,max:2147483647},cost:[5],description:[["敵を墜落させる特殊な矢を放つ。"]],condition:["矢を放つ"]}

data modify storage asset:skill _ append value {name:["ガストキャノン"  ],level:{min:39,max:48},cost:[7],description:[["放った矢を火球に変える。"]],condition:["矢を放つ"]}
data modify storage asset:skill _ append value {name:["ガストキャノンⅡ"],level:{min:49,max:2147483647},cost:[7],description:[["放った矢を火球に変える。"]],condition:["矢を放つ"]}

data modify storage asset:skill _ append value {name:["フェイタルショット"],level:{min:50,max:2147483647},cost:[100],description:[["周囲の敵を弱体化する特殊な矢を放つ。"]],condition:["矢を放つ"],range:[10],duration:[20]}

data modify storage asset:skill data.301 set from storage asset:skill _
data remove storage asset:skill _

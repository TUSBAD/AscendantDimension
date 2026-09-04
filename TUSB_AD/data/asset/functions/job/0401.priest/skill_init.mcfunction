#> asset:job/0401.priest/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["キアリク"],level:{min:5},cost:[10],description:[["自身の状態異常を回復する。"]],sneak:{description:[["周囲のプレイヤーの状態異常を回復する。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["ハートブースト"  ],level:{min:8 ,max:17},cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _ append value {name:["ハートブーストⅡ"],level:{min:18,max:27},cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _ append value {name:["ハートブーストⅢ"],level:{min:28,max:37},cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _ append value {name:["ハートブーストⅣ"],level:{min:38,max:47},cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _ append value {name:["ハートブーストⅤ"],level:{min:48,max:2147483647},cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}

data modify storage asset:skill _ append value {name:["リジェネレーション"  ],level:{min:17,max:36},cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}
data modify storage asset:skill _ append value {name:["リジェネレーションⅡ"],level:{min:37,max:45},cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}
data modify storage asset:skill _ append value {name:["リジェネレーションⅢ"],level:{min:46,max:2147483647},cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}

data modify storage asset:skill _ append value {name:["クイック"  ],level:{min:20},cost:[40],description:[["周囲のプレイヤーの攻撃速度を上昇させる。"]],range:[15],duration:[30]}
data modify storage asset:skill _ append value {name:["クイックⅡ"],level:{min:35},cost:[40],description:[["周囲のプレイヤーの攻撃速度を上昇させる。"]],range:[15],duration:[30]}

data modify storage asset:skill _ append value {name:["バオル"],level:{min:26},cost:[50],description:[["周囲のプレイヤーを潜水・炎上に強くする。"]],range:[15],duration:[30]}

data modify storage asset:skill _ append value {name:["レイズ"],level:{min:39},cost:[80],description:[["周囲の死んでいるプレイヤーにレイズの効果を与える。","また、自身にリレイズの効果を与える。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。","リレイズ：死亡時にレイズの効果を得る。"]],range:[10],duration:[30]}

# モード
data modify storage asset:skill _ append value {name:["ケアル"  ],level:{min:1 },cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["ケアルⅡ"],level:{min:10},cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["ケアルⅢ"],level:{min:25},cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["ケアルⅣ"],level:{min:40},cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["ケアルⅤ"],level:{min:49},cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["ディア"  ],level:{min:3 },cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["ディアⅡ"],level:{min:13},cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["ディアⅢ"],level:{min:23},cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["ディアⅣ"],level:{min:33},cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["ディアⅤ"],level:{min:43},cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}

data modify storage asset:skill _ append value {name:["フラワーギフト"  ],level:{min:15},cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _ append value {name:["フラワーギフトⅡ"],level:{min:30},cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _ append value {name:["フラワーギフトⅢ"],level:{min:45},cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}

data modify storage asset:skill _ append value {name:["ホーリー"],level:{min:50},cost:[100],description:[["聖なる力を放ち、周囲の敵にダメージ。","アンデッドには効果が高い。"]],condition:["雪玉を投げる"],range:[8]}

data modify storage asset:skill data.401 set from storage asset:skill _
data remove storage asset:skill _

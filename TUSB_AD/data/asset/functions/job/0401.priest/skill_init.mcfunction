#> asset:job/0401.priest/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 append value {name:["キアリク"],level:[5],cost:[10],description:[["自身の状態異常を回復する。"]],sneak:{description:[["周囲のプレイヤーの状態異常を回復する。"]],range:[15]}}

data modify storage asset:skill _.1 append value {name:["ハートブースト"  ],level:[8 ],cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _.1 append value {name:["ハートブーストⅡ"],level:[18],cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _.1 append value {name:["ハートブーストⅢ"],level:[28],cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _.1 append value {name:["ハートブーストⅣ"],level:[38],cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}
data modify storage asset:skill _.1 append value {name:["ハートブーストⅤ"],level:[48],cost:[40],description:[["周囲のプレイヤーの体力を増加させる。"]],range:[15],duration:[180]}

data modify storage asset:skill _.2 append value {name:["リジェネレーション"  ],level:[17],cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}
data modify storage asset:skill _.2 append value {name:["リジェネレーションⅡ"],level:[37],cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}
data modify storage asset:skill _.2 append value {name:["リジェネレーションⅢ"],level:[46],cost:[60],description:[["周囲のプレイヤーの体力を徐々に回復する。"]],range:[15],duration:[90]}

data modify storage asset:skill _.3 append value {name:["クイック"  ],level:[20],cost:[40],description:[["周囲のプレイヤーの攻撃速度を上昇させる。"]],range:[15],duration:[30]}
data modify storage asset:skill _.3 append value {name:["クイックⅡ"],level:[35],cost:[40],description:[["周囲のプレイヤーの攻撃速度を上昇させる。"]],range:[15],duration:[30]}

data modify storage asset:skill _.4 append value {name:["バオル"],level:[26],cost:[50],description:[["周囲のプレイヤーを潜水・炎上に強くする。"]],range:[15],duration:[30]}

data modify storage asset:skill _.5 append value {name:["レイズ"],level:[39],cost:[80],description:[["周囲の死んでいるプレイヤーにレイズの効果を与える。","また、自身にリレイズの効果を与える。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。","リレイズ：死亡時にレイズの効果を得る。"]],range:[10],duration:[30]}

# モード
data modify storage asset:skill _.20 append value {name:["ケアル"  ],level:[1 ],cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["ケアルⅡ"],level:[10],cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["ケアルⅢ"],level:[25],cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["ケアルⅣ"],level:[40],cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["ケアルⅤ"],level:[49],cost:[10],description:[["自身の体力を回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの体力を回復する。"]],range:[15]}}

data modify storage asset:skill _.21 append value {name:["ディア"  ],level:[3 ],cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.21 append value {name:["ディアⅡ"],level:[13],cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.21 append value {name:["ディアⅢ"],level:[23],cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.21 append value {name:["ディアⅣ"],level:[33],cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.21 append value {name:["ディアⅤ"],level:[43],cost:[10],description:[["敵単体を回復する。"]],condition:["雪玉を投げる"]}

data modify storage asset:skill _.22 append value {name:["フラワーギフト"  ],level:[15],cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _.22 append value {name:["フラワーギフトⅡ"],level:[30],cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _.22 append value {name:["フラワーギフトⅢ"],level:[45],cost:[20],description:[["周囲の敵の戦意を低下させる魔法を放つ。"]],condition:["雪玉を投げる"],range:[5]}

data modify storage asset:skill _.23 append value {name:["ホーリー"],level:[50],cost:[100],description:[["聖なる力を放ち、周囲の敵にダメージ。","アンデッドには効果が高い。"]],condition:["雪玉を投げる"],range:[8]}

data modify storage asset:skill data.401 set from storage asset:skill _
data remove storage asset:skill _

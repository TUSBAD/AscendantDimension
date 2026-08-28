#> asset:job/0101.warrior/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["ファランクス"  ],level:{min:1 ,max:14},cost:[20],description:["範囲内のプレイヤーの防御力を上昇させる。"]}
data modify storage asset:skill _ append value {name:["ファランクスⅡ"],level:{min:15,max:29},cost:[20],description:["自身の防御力を上昇させる。"],sneak:{range:[15],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}
data modify storage asset:skill _ append value {name:["ファランクスⅢ"],level:{min:30,max:44},cost:[20],description:["自身の防御力を上昇させる。"],sneak:{range:[15],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}
data modify storage asset:skill _ append value {name:["ファランクスⅣ"],level:{min:45,max:2147483647},cost:[20],description:["自身の防御力を上昇させる。"],sneak:{range:[15],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}

data modify storage asset:skill _ append value {name:["アイアンウィル"  ],level:{min:5 ,max:34},cost:[20],description:["次のノックバックを軽減する。一定確率で効果が継続する。装備：継続確率にボーナス。"]}
data modify storage asset:skill _ append value {name:["アイアンウィルⅡ"],level:{min:35,max:2147483647},cost:[20],description:["次のノックバックを軽減する。一定確率で効果が継続する。装備：継続確率にボーナス。"]}

data modify storage asset:skill _ append value {name:["ストライ"  ],level:{min:10,max:24},cost:[15],description:["自身の攻撃力を上昇させる。"],sneak:{description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}
data modify storage asset:skill _ append value {name:["ストライⅡ"],level:{min:25,max:39},cost:[15],description:["自身の攻撃力を上昇させる。"],sneak:{description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}
data modify storage asset:skill _ append value {name:["ストライⅢ"],level:{min:40,max:2147483647},cost:[15],description:["自身の攻撃力を上昇させる。"],sneak:{description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}

data modify storage asset:skill _ append value {name:["デコイ"  ],level:{min:18,max:37},cost:[10],range:[15],description:["周囲の敵を引き寄せる。"]}
data modify storage asset:skill _ append value {name:["デコイⅡ"],level:{min:38,max:2147483647},cost:[10],range:[25],description:["周囲の敵を引き寄せる。"]}

data modify storage asset:skill _ append value {name:["タクティカルヒール"],level:{min:43,max:2147483647},cost:[10],condition:["一度に6♡以上のダメージを受ける"],description:["次に大ダメージを受けた時、HPを被ダメージの2倍回復する。"]}

# モード
data modify storage asset:skill _ append value {name:["流し斬り"  ],level:{min:3 ,max:19},cost:[5],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}
data modify storage asset:skill _ append value {name:["流し斬りⅡ"],level:{min:20,max:36},cost:[5],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}
data modify storage asset:skill _ append value {name:["流し斬りⅢ"],level:{min:37,max:2147483647},cost:[5],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}

data modify storage asset:skill _ append value {name:["薙ぎ払い"  ],level:{min:8 ,max:27},cost:[10],range:[5],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}
data modify storage asset:skill _ append value {name:["薙ぎ払いⅡ"],level:{min:28,max:47},cost:[10],range:[5],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}
data modify storage asset:skill _ append value {name:["薙ぎ払いⅢ"],level:{min:48,max:2147483647},cost:[10],range:[5],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}

data modify storage asset:skill _ append value {name:["真空斬り"  ],level:{min:13,max:25},cost:[20] ,condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}
data modify storage asset:skill _ append value {name:["真空斬りⅡ"],level:{min:26,max:38},cost:[20],condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}
data modify storage asset:skill _ append value {name:["真空斬りⅢ"],level:{min:39,max:2147483647},cost:[20],condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}

data modify storage asset:skill _ append value {name:["リアクティブヒール"  ],level:{min:17,max:32},cost:[10],condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}
data modify storage asset:skill _ append value {name:["リアクティブヒールⅡ"],level:{min:33,max:48},cost:[10],condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}
data modify storage asset:skill _ append value {name:["リアクティブヒールⅢ"],level:{min:49,max:2147483647},cost:[10],condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}

data modify storage asset:skill _ append value {name:["魔神斬り"  ],level:{min:23,max:45},cost:[20],condition:["剣で攻撃"],description:["敵単体に大ダメージ。敵の武器を1/3の確率で破壊することがある。","発動の反動で少しの間攻撃できなくなる。"]}
data modify storage asset:skill _ append value {name:["魔神斬りⅡ"],level:{min:46,max:2147483647},cost:[20],condition:["剣で攻撃"],description:["敵単体に大ダメージ。敵の武器を1/3の確率で破壊することがある。","発動の反動で少しの間攻撃できなくなる。"]}

data modify storage asset:skill _ append value {name:["斬鉄剣"],level:{min:50,max:2147483647},cost:[100],range:[10],condition:["剣で攻撃"],description:["周囲の敵に大ダメージ。"]}

data modify storage asset:skill data.101 set from storage asset:skill _
data remove storage asset:skill _

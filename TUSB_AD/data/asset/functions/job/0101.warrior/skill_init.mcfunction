#> asset:job/0101.warrior/skill_init
#
# 剣士スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0.0 set value {name:["ファランクス"  ],level:1 ,cost:20,effect:[{id:"minecraft:resistance",duration:60,amplifier:0b}],description:["自身の防御力を上昇させる。"],sneak:{range:15,effects:[{id:"minecraft:resistance",duration:30,amplifier:0b}],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}
data modify storage asset:skill _.0.1 set value {name:["ファランクスⅡ"],level:15,cost:20,effect:[{id:"minecraft:resistance",duration:60,amplifier:1b}],description:["自身の防御力を上昇させる。"],sneak:{range:15,effects:[{id:"minecraft:resistance",duration:45,amplifier:0b}],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}
data modify storage asset:skill _.0.2 set value {name:["ファランクスⅢ"],level:30,cost:20,effect:[{id:"minecraft:resistance",duration:60,amplifier:2b}],description:["自身の防御力を上昇させる。"],sneak:{range:15,effects:[{id:"minecraft:resistance",duration:45,amplifier:1b}],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}
data modify storage asset:skill _.0.3 set value {name:["ファランクスⅣ"],level:45,cost:20,effect:[{id:"minecraft:resistance",duration:60,amplifier:3b}],description:["自身の防御力を上昇させる。"],sneak:{range:15,effects:[{id:"minecraft:resistance",duration:45,amplifier:2b}],description:["範囲内のプレイヤーの防御力を上昇させる。"]}}

data modify storage asset:skill _.1.0 set value {name:["アイアンウィル"  ],level:5 ,cost:20,description:["次のノックバックを軽減する。一定確率で効果が継続する。装備：継続確率にボーナス。"]}
data modify storage asset:skill _.1.1 set value {name:["アイアンウィルⅡ"],level:35,cost:20,description:["次のノックバックを軽減する。一定確率で効果が継続する。装備：継続確率にボーナス。"]}

data modify storage asset:skill _.2.0 set value {name:["ストライ"  ],level:10,cost:15,effects:[{id:"minecraft:strength",duration:60,amplifier:5b}],description:["自身の攻撃力を上昇させる。"],sneak:{effects:[{strength:{level:5 ,duration:60}}],range:15,description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}
data modify storage asset:skill _.2.1 set value {name:["ストライⅡ"],level:25,cost:15,effects:[{id:"minecraft:strength",duration:60,amplifier:11b}],description:["自身の攻撃力を上昇させる。"],sneak:{effects:[{strength:{level:11,duration:60}}],range:15,description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}
data modify storage asset:skill _.2.2 set value {name:["ストライⅢ"],level:40,cost:15,effects:[{id:"minecraft:strength",duration:60,amplifier:19b}],description:["自身の攻撃力を上昇させる。"],sneak:{effects:[{strength:{level:19,duration:60}}],range:15,description:["範囲内のプレイヤーの攻撃力を上昇させる。"]}}

data modify storage asset:skill _.3.0 set value {name:["デコイ"  ],level:18,cost:10,range:15,description:["周囲の敵を引き寄せる。"]}
data modify storage asset:skill _.3.1 set value {name:["デコイⅡ"],level:38,cost:10,range:25,description:["周囲の敵を引き寄せる。"]}

data modify storage asset:skill _.4.0 set value {name:["タクティカルヒール"],level:43,cost:10,heal:"被ダメージ×2",condition:["一度に6♡以上のダメージを受ける"],description:["次に大ダメージを受けた時、HPを大きく回復する。"]}

# モード
data modify storage asset:skill _.20.0 set value {name:["流し斬り"  ],level:3 ,cost:5,effects:[{id:"minecraft:weakness",duration:10,amplifier:99b}],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}
data modify storage asset:skill _.20.1 set value {name:["流し斬りⅡ"],level:20,cost:5,effects:[{id:"minecraft:weakness",duration:25,amplifier:99b}],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}
data modify storage asset:skill _.20.2 set value {name:["流し斬りⅢ"],level:37,cost:5,effects:[{id:"minecraft:weakness",duration:60,amplifier:99b}],condition:["剣で攻撃"],description:["敵単体の攻撃力を低下させる。"]}

data modify storage asset:skill _.21.0 set value {name:["薙ぎ払い"  ],level:8 ,cost:10,range:5,effects:[{id:"minecraft:levitation",duration:3,amplifier:99b}],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}
data modify storage asset:skill _.21.1 set value {name:["薙ぎ払いⅡ"],level:28,cost:10,range:5,effects:[{id:"minecraft:levitation",duration:3,amplifier:99b}],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}
data modify storage asset:skill _.21.2 set value {name:["薙ぎ払いⅢ"],level:48,cost:10,range:5,effects:[{id:"minecraft:levitation",duration:3,amplifier:99b}],condition:["剣で攻撃"],description:["周囲の敵を斬り上げる。"]}

data modify storage asset:skill _.22.0 set value {name:["真空斬り"  ],level:13,cost:20,damage:50 ,condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}
data modify storage asset:skill _.22.1 set value {name:["真空斬りⅡ"],level:26,cost:20,damage:100,condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}
data modify storage asset:skill _.22.2 set value {name:["真空斬りⅢ"],level:39,cost:20,damage:150,condition:["剣を持って敵に向かってスニーク"],description:["風の刃を発生させる。"]}

data modify storage asset:skill _.23.0 set value {name:["リアクティブヒール"  ],level:17,cost:10,heal:4 ,condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}
data modify storage asset:skill _.23.1 set value {name:["リアクティブヒールⅡ"],level:33,cost:10,heal:8 ,condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}
data modify storage asset:skill _.23.2 set value {name:["リアクティブヒールⅢ"],level:49,cost:10,heal:12,condition:["被ダメージ"],description:["被ダメージ時、HPが回復する。"]}

data modify storage asset:skill _.24.0 set value {name:["魔神斬り"  ],level:23,cost:20,damage:200,effects:[{id:"minecraft:mining_fatigue",duration:60,amplifier:99b}],condition:["剣で攻撃"],description:["敵単体に大ダメージ。敵の武器を1/3の確率で破壊することがある。","発動の反動で少しの間攻撃できなくなる。"]}
data modify storage asset:skill _.24.1 set value {name:["魔神斬りⅡ"],level:46,cost:20,damage:400,effects:[{id:"minecraft:mining_fatigue",duration:60,amplifier:99b}],condition:["剣で攻撃"],description:["敵単体に大ダメージ。敵の武器を1/3の確率で破壊することがある。","発動の反動で少しの間攻撃できなくなる。"]}

data modify storage asset:skill _.25.0 set value {name:["斬鉄剣"],level:50,cost:100,damage:650,range:10,condition:["剣で攻撃"],description:["周囲の敵に大ダメージ。"]}

data modify storage asset:skill data.101 set from storage asset:skill _
data remove storage asset:skill _

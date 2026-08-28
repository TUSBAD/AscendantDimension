#> asset:job/0201.assassin/skill_init
#
# 忍者スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["アイサツ"],level:{min:1,max:2147483647},cost:[5],description:[["周囲にアイサツする。敵が居た場合、戦闘に備え次のサポートスキルの消費MPを軽減する。"]],range:[15]}

data modify storage asset:skill _ append value {name:["疾風"  ],level:{min:8 ,max:22},cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}
data modify storage asset:skill _ append value {name:["疾風Ⅱ"],level:{min:23,max:37},cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}
data modify storage asset:skill _ append value {name:["疾風Ⅲ"],level:{min:38,max:2147483647},cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}

data modify storage asset:skill _ append value {name:["水遁"],level:{min:10,max:2147483647},cost:[15],description:[["自身を潜水に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを潜水に強くする。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["呼魂"  ],level:{min:15,max:34},cost:[50],description:[["周囲のアイテムを引き寄せる。"]],range:[10]}
data modify storage asset:skill _ append value {name:["呼魂Ⅱ"],level:{min:35,max:2147483647},cost:[50],description:[["周囲のアイテムを引き寄せる。"]],range:[20]}

data modify storage asset:skill _ append value {name:["黙想"  ],level:{min:17,max:42},cost:[25],description:[["自身の体力を徐々に回復する。移動すると効果がなくなる。"]]}
data modify storage asset:skill _ append value {name:["黙想Ⅱ"],level:{min:43,max:2147483647},cost:[25],description:[["自身の体力を徐々に回復する。移動すると効果がなくなる。"]]}

data modify storage asset:skill _ append value {name:["兵糧丸"],level:{min:20,max:2147483647},cost:[15],description:[["自身の満腹度・状態異常を回復する。"]]}

data modify storage asset:skill _ append value {name:["火遁"],level:{min:30,max:2147483647},cost:[25],description:[["自身を炎上に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを炎上に強くする。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["風切"  ],level:{min:37,max:48,max:2147483647},cost:[20],description:[["風に乗じて浮遊する。"]],duration:[60]}
data modify storage asset:skill _ append value {name:["風切Ⅱ"],level:{min:49,max:2147483647},cost:[20],description:[["風に乗じて浮遊する。"]],duration:[60]}

data modify storage asset:skill _ append value {name:["夜駆"],level:{min:40,max:2147483647},cost:[20],description:[["時間帯に応じた強化を得る。"]],duration:[60]}

# モード
data modify storage asset:skill _ append value {name:["手裏剣"  ],level:{min:3 ,max:17},cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["手裏剣Ⅱ"],level:{min:18,max:32},cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["手裏剣Ⅲ"],level:{min:33,max:47},cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _ append value {name:["手裏剣Ⅳ"],level:{min:48,max:2147483647},cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}

data modify storage asset:skill _ append value {name:["連舞"  ],level:{min:5 ,max:24},cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}
data modify storage asset:skill _ append value {name:["連舞Ⅱ"],level:{min:25,max:44},cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}
data modify storage asset:skill _ append value {name:["連舞Ⅲ"],level:{min:45,max:2147483647},cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}

data modify storage asset:skill _ append value {name:["跳躍"  ],level:{min:13,max:25},cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}
data modify storage asset:skill _ append value {name:["跳躍Ⅱ"],level:{min:26,max:38},cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}
data modify storage asset:skill _ append value {name:["跳躍Ⅲ"],level:{min:39,max:2147483647},cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}

data modify storage asset:skill _ append value {name:["居縮"  ],level:{min:28,max:45},cost:[10],description:[["敵単体をすくみ上がらせ、金縛り状態にする。"]],condition:["雪玉を投げる"],duration:[5]}
data modify storage asset:skill _ append value {name:["居縮Ⅱ"],level:{min:46,max:2147483647},cost:[10],description:[["敵単体をすくみ上がらせ、金縛り状態にする。"]],condition:["雪玉を投げる"],duration:[5]}

data modify storage asset:skill _ append value {name:["サヨナラ"],level:{min:50,max:2147483647},cost:[0],description:[["爆発四散し、周囲に残りMPに応じたダメージを与える。","また、残りMPが100以上だった時、レイズの効果を得る。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。"]],condition:["死亡する"]}

data modify storage asset:skill data.201 set from storage asset:skill _
data remove storage asset:skill _

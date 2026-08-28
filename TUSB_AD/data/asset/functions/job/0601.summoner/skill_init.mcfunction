#> asset:job/0601.summoner/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["サモンP：スノー"],level:{min:5,max:2147483647},cost:[25],description:[["スノーゴーレム(ペット)を召喚する。","HP：✮✮✮✩✩","攻：✩✩✩✩✩","防：✮✮✩✩✩","特性：爆発耐性","支援：採掘速度上昇"]]}

data modify storage asset:skill _ append value {name:["サモンE：マーチャント"],level:{min:10,max:2147483647},cost:[30],description:[["商人を召喚する。"]]}

data modify storage asset:skill _ append value {name:["ヘイカモンα"],level:{min:13,max:32},cost:[10],description:[["周囲のペットを５体まで引き寄せる。"],["周囲のペットを10体まで引き寄せる。"]],range:[15],sneak:{description:[["周囲のプレイヤーも１人まで引き寄せる。"],["周囲のプレイヤーも２人まで引き寄せる。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["ヘイカモンβ"],level:{min:33,max:2147483647},cost:[10],description:[["周囲のペットを５体まで引き寄せる。"],["周囲のペットを10体まで引き寄せる。"]],range:[15],sneak:{description:[["周囲のプレイヤーも１人まで引き寄せる。"],["周囲のプレイヤーも２人まで引き寄せる。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["サモンE:スーパードラゴン"],level:{min:17,max:2147483647},cost:[35],description:[["スーパードラゴンを召喚する。"]]}

data modify storage asset:skill _ append value {name:["サモンP：ウルフ"],level:{min:25,max:2147483647},cost:[40],description:[["オオカミ(ペット)を召喚する。","HP：✮✮✮✩✩","攻：✮✮✮✮✮","防：✮✮✮✩✩","特性：火炎耐性","支援：攻撃力上昇"]]}

data modify storage asset:skill _ append value {name:["サモンE:ヒーリングキャット"],level:{min:30,max:2147483647},cost:[45],description:[["ぬこかわいいよぬこ。"]],duration:[10]}

data modify storage asset:skill _ append value {name:["サモンP：ゴーレム"],level:{min:45,max:2147483647},cost:[50],description:[["アイアンゴーレム(ペット)を召喚する。","HP：✮✮✮✮✮","攻：✮✮✮✮✩","防：✮✮✮✮✩","特性：射撃耐性","支援：防御力上昇"]]}

data modify storage asset:skill _ append value {name:["サモンE:バルーン"],level:{min:46,max:2147483647},cost:[55],description:[["熱気球を召喚する。"]]}

data modify storage asset:skill _ append value {name:["サモンE:グライダー"],level:{min:49,max:2147483647},cost:[60],description:[["グライダーを召喚する。"]]}

# モード
data modify storage asset:skill _ append value {name:["フィールα"],level:{min:1 ,max:19},cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["フィールβ"],level:{min:20,max:39},cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["フィールγ"],level:{min:40,max:2147483647},cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["金タライ"],level:{min:3,max:2147483647},cost:[5],description:[["周囲の敵の頭上に金タライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _ append value {name:["ディールα"],level:{min:8 ,max:27},cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}
data modify storage asset:skill _ append value {name:["ディールβ"],level:{min:28,max:47},cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}
data modify storage asset:skill _ append value {name:["ディールγ"],level:{min:48,max:2147483647},cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}

data modify storage asset:skill _ append value {name:["ぽんぽんα"],level:{min:15,max:34},cost:[10],description:[["周囲のペットを回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}
data modify storage asset:skill _ append value {name:["ぽんぽんβ"],level:{min:35,max:2147483647},cost:[10],description:[["周囲のペットを回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _ append value {name:["つんつんα"],level:{min:18,max:37},cost:[10],description:[["ペットに命令する。","ニンジン付き：支援しろ！","歪んだキノコ付き：技を使え！"]],condition:["〇〇付きの棒を持って右クリック"],range:[15]}
data modify storage asset:skill _ append value {name:["つんつんβ"],level:{min:38,max:2147483647},cost:[10],description:[["ペットに命令する。","ニンジン付き：支援しろ！","歪んだキノコ付き：技を使え！"]],condition:["〇〇付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _ append value {name:["あつあつタライ"],level:{min:23,max:2147483647},cost:[10],description:[["周囲の敵の頭上にあつあつタライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _ append value {name:["サモンB:オブシディアン"],level:{min:26,max:2147483647},cost:[20],description:[["黒曜石を召喚する。","上空では長く保たない。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:["1s～25s"]}

data modify storage asset:skill _ append value {name:["ぽむぽむハナビ"],level:{min:37,max:2147483647},cost:[10],description:[["ぽむぽむハナビを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"]}

data modify storage asset:skill _ append value {name:["サモンB:エンダーチェスト"],level:{min:39,max:2147483647},cost:[40],description:[["エンダーチェストを召喚する。","上空では長く保たない。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:["1s～25s"]}

data modify storage asset:skill _ append value {name:["きらきらタライ"],level:{min:43,max:2147483647},cost:[15],description:[["周囲の敵の頭上にきらきらタライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _ append value {name:["サモン:ぷちブラック"],level:{min:50,max:2147483647},cost:[100],description:[["ぷちブラックホールを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:[15]}

data modify storage asset:skill data.601 set from storage asset:skill _
data remove storage asset:skill _

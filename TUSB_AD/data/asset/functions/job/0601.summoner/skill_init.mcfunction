#> asset:job/0601.summoner/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 append value {name:["サモンP：スノー"],level:[5],cost:[25],description:[["スノーゴーレム(ペット)を召喚する。","HP：✮✮✮✩✩","攻：✩✩✩✩✩","防：✮✮✩✩✩","特性：爆発耐性","支援：採掘速度上昇"]]}

data modify storage asset:skill _.1 append value {name:["サモンE：マーチャント"],level:[10],cost:[30],description:[["商人を召喚する。"]]}

data modify storage asset:skill _.2 append value {name:["ヘイカモンα"],level:[13],cost:[10],description:[["周囲のペットを５体まで引き寄せる。"],["周囲のペットを10体まで引き寄せる。"]],range:[15],sneak:{description:[["周囲のプレイヤーも１人まで引き寄せる。"],["周囲のプレイヤーも２人まで引き寄せる。"]],range:[15]}}
data modify storage asset:skill _.2 append value {name:["ヘイカモンβ"],level:[33],cost:[10],description:[["周囲のペットを５体まで引き寄せる。"],["周囲のペットを10体まで引き寄せる。"]],range:[15],sneak:{description:[["周囲のプレイヤーも１人まで引き寄せる。"],["周囲のプレイヤーも２人まで引き寄せる。"]],range:[15]}}

data modify storage asset:skill _.3 append value {name:["サモンE:スーパードラゴン"],level:[17],cost:[35],description:[["スーパードラゴンを召喚する。"]]}

data modify storage asset:skill _.4 append value {name:["サモンP：ウルフ"],level:[25],cost:[40],description:[["オオカミ(ペット)を召喚する。","HP：✮✮✮✩✩","攻：✮✮✮✮✮","防：✮✮✮✩✩","特性：火炎耐性","支援：攻撃力上昇"]]}

data modify storage asset:skill _.5 append value {name:["サモンE:ヒーリングキャット"],level:[30],cost:[45],description:[["ぬこかわいいよぬこ。"]],duration:[10]}

data modify storage asset:skill _.6 append value {name:["サモンP：ゴーレム"],level:[45],cost:[50],description:[["アイアンゴーレム(ペット)を召喚する。","HP：✮✮✮✮✮","攻：✮✮✮✮✩","防：✮✮✮✮✩","特性：射撃耐性","支援：防御力上昇"]]}

data modify storage asset:skill _.7 append value {name:["サモンE:バルーン"],level:[46],cost:[55],description:[["熱気球を召喚する。"]]}

data modify storage asset:skill _.8 append value {name:["サモンE:グライダー"],level:[49],cost:[60],description:[["グライダーを召喚する。"]]}

# モード

data modify storage asset:skill _.20 append value {name:["フィールα"],level:[1 ],cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["フィールβ"],level:[20],cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}
data modify storage asset:skill _.20 append value {name:["フィールγ"],level:[40],cost:[30],description:[["自身の足元に5x5の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に7x7の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"],["自身の足元に9x9の羊毛の足場を召喚する。","アドベンチャーダンジョンでは使用できない。"]],condition:["ニンジン付きの棒を持って右クリック"],sneak:{description:[["周囲のプレイヤーの足元に5x5の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に7x7の羊毛の足場を召喚する。"],["周囲のプレイヤーの足元に9x9の羊毛の足場を召喚する。"]],range:[15]}}

data modify storage asset:skill _.21 append value {name:["金タライ"],level:[3],cost:[5],description:[["周囲の敵の頭上に金タライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _.22 append value {name:["ディールα"],level:[8 ],cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}
data modify storage asset:skill _.22 append value {name:["ディールβ"],level:[28],cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}
data modify storage asset:skill _.22 append value {name:["ディールγ"],level:[48],cost:[20],description:[["羊毛に乗っている敵にダメージを与える。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[30]}

data modify storage asset:skill _.23 append value {name:["ぽんぽんα"],level:[15],cost:[10],description:[["周囲のペットを回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}
data modify storage asset:skill _.23 append value {name:["ぽんぽんβ"],level:[35],cost:[10],description:[["周囲のペットを回復する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _.24 append value {name:["つんつんα"],level:[18],cost:[10],description:[["ペットに命令する。","ニンジン付き：支援しろ！","歪んだキノコ付き：技を使え！"]],condition:["〇〇付きの棒を持って右クリック"],range:[15]}
data modify storage asset:skill _.24 append value {name:["つんつんβ"],level:[38],cost:[10],description:[["ペットに命令する。","ニンジン付き：支援しろ！","歪んだキノコ付き：技を使え！"]],condition:["〇〇付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _.25 append value {name:["あつあつタライ"],level:[23],cost:[10],description:[["周囲の敵の頭上にあつあつタライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _.26 append value {name:["サモンB:オブシディアン"],level:[26],cost:[20],description:[["黒曜石を召喚する。","上空では長く保たない。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:["1s～25s"]}

data modify storage asset:skill _.27 append value {name:["ぽむぽむハナビ"],level:[37],cost:[10],description:[["ぽむぽむハナビを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"]}

data modify storage asset:skill _.28 append value {name:["サモンB:エンダーチェスト"],level:[39],cost:[40],description:[["エンダーチェストを召喚する。","上空では長く保たない。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:["1s～25s"]}

data modify storage asset:skill _.29 append value {name:["きらきらタライ"],level:[43],cost:[15],description:[["周囲の敵の頭上にきらきらタライを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill _.30 append value {name:["サモン:ぷちブラック"],level:[50],cost:[100],description:[["ぷちブラックホールを召喚する。"]],condition:["ニンジン付きの棒を持って右クリック"],duration:[15]}

data modify storage asset:skill data.601 set from storage asset:skill _
data remove storage asset:skill _

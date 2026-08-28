#> asset:job/0501.sorcerer/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _ append value {name:["スノウ"],level:{min:3,max:2147483647},cost:[20],description:[["敵を阻む氷の壁を築く。"]]}

data modify storage asset:skill _ append value {name:["キャンドル"],level:{min:8,max:2147483647},cost:[30],description:[["数秒後に目の前に灯りを設置する。"]]}

data modify storage asset:skill _ append value {name:["ウェザー"],level:{min:13,max:2147483647},cost:[60],description:[["天候を変える。"]]}

data modify storage asset:skill _ append value {name:["グロウ"],level:{min:18,max:2147483647},cost:[60],description:[["周囲の作物を成長させる。"]],range:[2]}

data modify storage asset:skill _ append value {name:["マナリフレッシュ"  ],level:{min:23,max:42},cost:[40],description:[["自身のMP自然回復量を倍増する。"]],duration:[30],sneak:{description:[["周囲のプレイヤーのMP自然回復量を倍増する。"]],range:[15]}}
data modify storage asset:skill _ append value {name:["マナリフレッシュⅡ"],level:{min:43,max:2147483647},cost:[40],description:[["自身のMP自然回復量を倍増する。"]],duration:[30],sneak:{description:[["周囲のプレイヤーのMP自然回復量を倍増する。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["エンアスピル"  ],level:{min:26,max:38},cost:[5],description:[["次に敵を近接攻撃した時、MPを回復する。"]]}
data modify storage asset:skill _ append value {name:["エンアスピルⅡ"],level:{min:39,max:2147483647},cost:[5],description:[["次に敵を近接攻撃した時、MPを回復する。"]]}

data modify storage asset:skill _ append value {name:["マジックシールド"],level:{min:28,max:2147483647},cost:[50],description:[["次に受けるダメージを無効化する。"]]}

data modify storage asset:skill _ append value {name:["ルーラ"],level:{min:33,max:2147483647},cost:[90],description:[["周囲のプレイヤーを交易島までワープする。","頭上が遮られていると失敗する。"]],range:"10"}

data modify storage asset:skill _ append value {name:["ウィンドウォール"],level:{min:38,max:2147483647},cost:[40],description:[["自身に一定時間風が纏い、周囲の飛翔物を妨げる。"]],duration:[20],sneak:{description:[["周囲のプレイヤーに一定時間風が纏い、周囲の飛翔物を妨げる。"]],range:[15]}}

data modify storage asset:skill _ append value {name:["ラナルータ"],level:{min:40,max:2147483647},cost:[80],description:[["昼夜を逆転する。"]]}

# モード
data modify storage asset:skill _ append value {name:["アイスストーム"  ],level:{min:1 ,max:19},cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _ append value {name:["アイスストームⅡ"],level:{min:20,max:44},cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _ append value {name:["アイスストームⅢ"],level:{min:45,max:2147483647},cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}

data modify storage asset:skill _ append value {name:["クロスファイアー"  ],level:{min:5 ,max:24},cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}
data modify storage asset:skill _ append value {name:["クロスファイアーⅡ"],level:{min:25,max:45},cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}
data modify storage asset:skill _ append value {name:["クロスファイアーⅢ"],level:{min:46,max:2147483647},cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}

data modify storage asset:skill _ append value {name:["サンダーボルト"  ],level:{min:10,max:29},cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}
data modify storage asset:skill _ append value {name:["サンダーボルトⅡ"],level:{min:30,max:47},cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}
data modify storage asset:skill _ append value {name:["サンダーボルトⅢ"],level:{min:48,max:2147483647},cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}

data modify storage asset:skill _ append value {name:["ジオクラッシュ"  ],level:{min:15,max:34},cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _ append value {name:["ジオクラッシュⅡ"],level:{min:35,max:48},cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _ append value {name:["ジオクラッシュⅢ"],level:{min:49,max:2147483647},cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}

data modify storage asset:skill _ append value {name:["ドレイン"  ],level:{min:17,max:36},cost:[25],description:[["付近のアンデッドでない敵単体から体力を吸収する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _ append value {name:["ドレインⅡ"],level:{min:37,max:2147483647},cost:[25],description:[["付近のアンデッドでない敵単体から体力を吸収する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}

data modify storage asset:skill _ append value {name:["パルプンテ"],level:{min:50,max:2147483647},cost:[100],description:[["何が起こるか分からない。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill data.501 set from storage asset:skill _
data remove storage asset:skill _

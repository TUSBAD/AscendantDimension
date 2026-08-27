#> asset:job/0501.sorcerer/skill_init
#
# スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 append value {name:["スノウ"],level:[3],cost:[20],description:[["敵を阻む氷の壁を築く。"]]}

data modify storage asset:skill _.1 append value {name:["キャンドル"],level:[8],cost:[30],description:[["数秒後に目の前に灯りを設置する。"]]}

data modify storage asset:skill _.2 append value {name:["ウェザー"],level:[13],cost:[60],description:[["天候を変える。"]]}

data modify storage asset:skill _.3 append value {name:["グロウ"],level:[18],cost:[60],description:[["周囲の作物を成長させる。"]],range:[2]}

data modify storage asset:skill _.4 append value {name:["マナリフレッシュ"  ],level:[23],cost:[40],description:[["自身のMP自然回復量を倍増する。"]],duration:[30],sneak:{description:[["周囲のプレイヤーのMP自然回復量を倍増する。"]],range:[15]}}
data modify storage asset:skill _.4 append value {name:["マナリフレッシュⅡ"],level:[43],cost:[40],description:[["自身のMP自然回復量を倍増する。"]],duration:[30],sneak:{description:[["周囲のプレイヤーのMP自然回復量を倍増する。"]],range:[15]}}

data modify storage asset:skill _.5 append value {name:["エンアスピル"  ],level:[26],cost:[5],description:[["次に敵を近接攻撃した時、MPを回復する。"]]}
data modify storage asset:skill _.5 append value {name:["エンアスピルⅡ"],level:[39],cost:[5],description:[["次に敵を近接攻撃した時、MPを回復する。"]]}

data modify storage asset:skill _.6 append value {name:["マジックシールド"],level:[28],cost:[50],description:[["次に受けるダメージを無効化する。"]]}

data modify storage asset:skill _.7 append value {name:["ルーラ"],level:[33],cost:[90],description:[["周囲のプレイヤーを交易島までワープする。","頭上が遮られていると失敗する。"]],range:"10"}

data modify storage asset:skill _.8 append value {name:["ウィンドウォール"],level:[38],cost:[40],description:[["自身に一定時間風が纏い、周囲の飛翔物を妨げる。"]],duration:[20],sneak:{description:[["周囲のプレイヤーに一定時間風が纏い、周囲の飛翔物を妨げる。"]],range:[15]}}

data modify storage asset:skill _.9 append value {name:["ラナルータ"],level:[40],cost:[80],description:[["昼夜を逆転する。"]]}

# モード
data modify storage asset:skill _.20 append value {name:["アイスストーム"  ],level:[1 ],cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _.20 append value {name:["アイスストームⅡ"],level:[20],cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}
data modify storage asset:skill _.20 append value {name:["アイスストームⅢ"],level:[45],cost:[5],description:[["凍てつく球状の冷気を放つ。"]],condition:["雪玉を投げる"],range:[5]}

data modify storage asset:skill _.21 append value {name:["クロスファイアー"  ],level:[5 ],cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}
data modify storage asset:skill _.21 append value {name:["クロスファイアーⅡ"],level:[25],cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}
data modify storage asset:skill _.21 append value {name:["クロスファイアーⅢ"],level:[46],cost:[10],description:[["燃え盛る十字状の火炎を放つ。"]],condition:["雪玉を投げる"],range:[7]}

data modify storage asset:skill _.22 append value {name:["サンダーボルト"  ],level:[10],cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}
data modify storage asset:skill _.22 append value {name:["サンダーボルトⅡ"],level:[30],cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}
data modify storage asset:skill _.22 append value {name:["サンダーボルトⅢ"],level:[48],cost:[20],description:[["付近の敵単体に雷を落とす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[5]}

data modify storage asset:skill _.23 append value {name:["ジオクラッシュ"  ],level:[15],cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _.23 append value {name:["ジオクラッシュⅡ"],level:[35],cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _.23 append value {name:["ジオクラッシュⅢ"],level:[49],cost:[20],description:[["周囲に地響きを起こす。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}

data modify storage asset:skill _.24 append value {name:["ドレイン"  ],level:[17],cost:[25],description:[["付近のアンデッドでない敵単体から体力を吸収する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}
data modify storage asset:skill _.24 append value {name:["ドレインⅡ"],level:[37],cost:[25],description:[["付近のアンデッドでない敵単体から体力を吸収する。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[10]}

data modify storage asset:skill _.25 append value {name:["パルプンテ"],level:[50],cost:[100],description:[["何が起こるか分からない。"]],condition:["ニンジン付きの棒を持って右クリック"],range:[15]}

data modify storage asset:skill data.501 set from storage asset:skill _
data remove storage asset:skill _

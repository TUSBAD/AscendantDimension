#> asset:job/0201.assassin/skill_init
#
# 忍者スキル
#
# @within function data/asset/functions/job/

# サポート
data modify storage asset:skill _.0 append value {name:["アイサツ"],level:[1],cost:[5],description:[["周囲にアイサツする。敵が居た場合、戦闘に備え次のサポートスキルの消費MPを軽減する。"]],range:[15]}

data modify storage asset:skill _.1 append value {name:["疾風"  ],level:[8 ],cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}
data modify storage asset:skill _.1 append value {name:["疾風Ⅱ"],level:[23],cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}
data modify storage asset:skill _.1 append value {name:["疾風Ⅲ"],level:[38],cost:[10],description:[["自身の移動速度を上昇させる。"]],duration:[60]}

data modify storage asset:skill _.2 append value {name:["水遁"],level:[10],cost:[15],description:[["自身を潜水に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを潜水に強くする。"]],range:[15]}}

data modify storage asset:skill _.3 append value {name:["呼魂"  ],level:[15],cost:[50],description:[["周囲のアイテムを引き寄せる。"]],range:[10]}
data modify storage asset:skill _.3 append value {name:["呼魂Ⅱ"],level:[35],cost:[50],description:[["周囲のアイテムを引き寄せる。"]],range:[20]}

data modify storage asset:skill _.4 append value {name:["黙想"  ],level:[17],cost:[25],description:[["自身の体力を徐々に回復する。移動すると効果がなくなる。"]]}
data modify storage asset:skill _.4 append value {name:["黙想Ⅱ"],level:[43],cost:[25],description:[["自身の体力を徐々に回復する。移動すると効果がなくなる。"]]}

data modify storage asset:skill _.5 append value {name:["兵糧丸"],level:[20],cost:[15],description:[["自身の満腹度・状態異常を回復する。"]]}

data modify storage asset:skill _.6 append value {name:["火遁"],level:[30],cost:[25],description:[["自身を炎上に強くする。"]],duration:[60],sneak:{description:[["周囲のプレイヤーを炎上に強くする。"]],range:[15]}}

data modify storage asset:skill _.7 append value {name:["風切"  ],level:[37],cost:[20],description:[["風に乗じて浮遊する。"]],duration:[60]}
data modify storage asset:skill _.7 append value {name:["風切Ⅱ"],level:[49],cost:[20],description:[["風に乗じて浮遊する。"]],duration:[60]}

data modify storage asset:skill _.8 append value {name:["夜駆"],level:[40],cost:[20],description:[["時間帯に応じた強化を得る。"]],duration:[60]}

# モード
data modify storage asset:skill _.20 append value {name:["手裏剣"  ],level:[3 ],cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.20 append value {name:["手裏剣Ⅱ"],level:[18],cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.20 append value {name:["手裏剣Ⅲ"],level:[33],cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}
data modify storage asset:skill _.20 append value {name:["手裏剣Ⅳ"],level:[48],cost:[2],description:[["手裏剣を投げる。"]],condition:["雪玉を投げる"]}

data modify storage asset:skill _.21 append value {name:["連舞"  ],level:[5 ],cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}
data modify storage asset:skill _.21 append value {name:["連舞Ⅱ"],level:[25],cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}
data modify storage asset:skill _.21 append value {name:["連舞Ⅲ"],level:[45],cost:[3],description:[["連続ヒット数に応じて攻撃力が上昇する。"]],condition:["敵を攻撃"],duration:[2]}

data modify storage asset:skill _.22 append value {name:["跳躍"  ],level:[13],cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}
data modify storage asset:skill _.22 append value {name:["跳躍Ⅱ"],level:[26],cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}
data modify storage asset:skill _.22 append value {name:["跳躍Ⅲ"],level:[39],cost:[3],description:[["スニーク時間に応じて跳躍力が上昇する。"]],condition:["スニークする"],duration:[3]}

data modify storage asset:skill _.23 append value {name:["居縮"  ],level:[28],cost:[10],description:[["敵単体をすくみ上がらせ、金縛り状態にする。"]],condition:["雪玉を投げる"],duration:[5]}
data modify storage asset:skill _.23 append value {name:["居縮Ⅱ"],level:[46],cost:[10],description:[["敵単体をすくみ上がらせ、金縛り状態にする。"]],condition:["雪玉を投げる"],duration:[5]}

data modify storage asset:skill _.24 append value {name:["サヨナラ"],level:[50],cost:[0],description:[["爆発四散し、周囲に残りMPに応じたダメージを与える。","また、残りMPが100以上だった時、レイズの効果を得る。","レイズ：一定時間、（可能であれば、）","リスポーン時に死亡地点へ復帰する。"]],condition:["死亡する"]}

data modify storage asset:skill data.201 set from storage asset:skill _
data remove storage asset:skill _

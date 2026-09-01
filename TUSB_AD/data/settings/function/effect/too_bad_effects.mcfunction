#> settings:effect/too_bad_effects
#
#> 特殊デバフの名前と説明の初期設定
#
#@within function core:load/once_add

#> 特殊デバフの名前を使用するとき。
#
#
# 使用例
# {"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Doom"}
#

data modify storage effect: BadEffectsName.Doom set value '{"translate":"死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"一定時間経過後、死亡する。","color":"white"}},"color":"#d159ff"}'
data modify storage effect: BadEffectsName.DoomEX set value '{"translate":"致死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"解除するまで、ダメージを受け続ける。","color":"white"}},"color":"#d309ff"}'
data modify storage effect: BadEffectsName.ManaErosion set value '{"translate":"魔力浸食","hoverEvent":{"action":"show_text","value":{"translate":"解除するまで、MPが減少し続ける。","color":"white"}},"color":"#6b1ae6"}'
data modify storage effect: BadEffectsName.DeathDoom set value '{"translate":"即死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"1分後に、必ず死に至る。","color":"white"}},"color":"#df2f20"}'
data modify storage effect: BadEffectsName.Poison set value '{"translate":"致死毒","hoverEvent":{"action":"show_text","value":{"translate":"敵が特定スキルを詠唱時、死に至る。","color":"white"}},"color":"#00d000"}'
data modify storage effect: BadEffectsName.Burn set value '{"translate":"火だるま","hoverEvent":{"action":"show_text","value":{"translate":"炎上ダメージが増加する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Freeze set value '{"translate":"凍結","hoverEvent":{"action":"show_text","value":{"translate":"一定時間完全拘束される。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Palsy set value '{"translate":"麻痺","hoverEvent":{"action":"show_text","value":{"translate":"スキルが発動しにくくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Confuse set value '{"translate":"混乱","hoverEvent":{"action":"show_text","value":{"translate":"進行方向が分からなくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Virus set value '{"translate":"病気","hoverEvent":{"action":"show_text","value":{"translate":"体力が回復しづらくなる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Tnt set value '{"translate":"トント","hoverEvent":{"action":"show_text","value":{"translate":"一定回数ダメージを受けると爆発する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Pale set value '{"translate":"ペイル","hoverEvent":{"action":"show_text","value":{"translate":"最大体力が減少する。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.Debility set value '{"translate":"衰弱","hoverEvent":{"action":"show_text","value":{"translate":"体力が一列になる。","color":"white"}},"color":"white"}'
data modify storage effect: BadEffectsName.RevivalSicknesss set value '{"translate":"復活酔い","hoverEvent":{"action":"show_text","value":{"translate":"ブロックを掘れなくなる。","color":"white"}},"color":"white"}'
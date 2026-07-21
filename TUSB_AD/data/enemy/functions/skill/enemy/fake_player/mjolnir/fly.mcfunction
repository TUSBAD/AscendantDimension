#> enemy:skill/enemy/fake_player/mjolnir/fly
#
# 判定処理
#
# @within function enemy:skill/magic/yggdrasil/mjolnir/

data modify storage enemy: hit set value false
execute positioned ~-0.5 ~ ~-0.5 as @a[dy=0] unless predicate skill:is_saturation at @s run function enemy:skill/enemy/fake_player/mjolnir/hit

# 当たっていたらタライを消す
execute if data storage enemy: {hit:true} run kill @s

data modify storage enemy: _ set value true

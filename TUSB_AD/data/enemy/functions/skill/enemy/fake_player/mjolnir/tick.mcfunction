#> enemy:skill/enemy/fake_player/mjolnir/tick
#
# tick処理
#
# @within function enemy:skill/enemy/fake_player/mjolnir/

data modify storage enemy: _ set value false
data modify storage score_damage: Argument set value {Damage:2000.00}
execute as @e[type=falling_block,tag=Mjolnir] at @s run function enemy:skill/enemy/fake_player/mjolnir/fly

execute if data storage enemy: {_:true} run schedule function enemy:skill/enemy/fake_player/mjolnir/tick 1t

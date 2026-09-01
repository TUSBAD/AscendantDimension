#> enemy:skill/enemy/boss.minor/transition_ascendant
#
# トランジッション・アセンダント
#
# @within function enemy:skill/enemy/boss/

tellraw @a[distance=..32] ["",{"selector":"@s","bold":true},{"translate":" は","color":"white","bold":true},{"translate":" %1$s を唱えた！","color":"white","bold":true,"with":[{"translate":"§5§lトランジッション・§4§lアセンダント§r","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"周囲80mのプレイヤーを自身にTPし、耐性を削除する。","color":"red"}}}]}]

tp @a[distance=..80,predicate=!entity:player_invulnerable] @s

effect clear @a[distance=..4] minecraft:resistance

playsound block.portal.trigger hostile @a[distance=..64] ~ ~ ~ 0.75 2 1

particle minecraft:witch ~ ~ ~ 1 1 1 1 50 force @a[distance=..30]

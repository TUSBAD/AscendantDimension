#> core:game_menu/tune_particle
#
### パーティクル表示量切替
#
# @within function core:game_menu/reshow

scoreboard players add @s ParticleDenom 1
execute if score @s ParticleDenom matches 6 run scoreboard players set @s ParticleDenom 1

### メッセージ
tellraw @s [{"storage":"core:","nbt":"Prefix.INFO"},{"translate":"パーティクル表示割合を %1$s にしました。","color":"white","with":[{"translate":"1 / %1$s","color":"green","with":[{"score":{"name":"@s","objective":"ParticleDenom"}}]}]}]
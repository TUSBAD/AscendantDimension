#> effect:doom/process
#
# 死の宣告の処理
#
## 死の宣告カウントダウン
#宣告カウント進行
scoreboard players remove @s Doom 1
scoreboard players operation _ Doom = @s Doom
scoreboard players operation _ _ = @s Doom

# 演出
execute if score _ _ matches 0 run function makeup:effect/doom/proceed
# 0なら死
execute if score _ _ matches 0 if score _ Doom matches 0 run function effect:doom/death

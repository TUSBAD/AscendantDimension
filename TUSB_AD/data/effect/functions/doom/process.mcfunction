#> effect:doom/process
#
# 死の宣告の処理
#
## 死の宣告カウントダウン
#宣告カウント進行
scoreboard players remove @s Doom 1
scoreboard players operation _ Doom = @s Doom
execute if score #Difficulty Difficulty matches 1 run scoreboard players set _ Calc 3
execute if score #Difficulty Difficulty matches 2..5 run scoreboard players set _ Calc 1
scoreboard players operation _ Doom /= _ Calc
scoreboard players operation _ _ = @s Doom
scoreboard players operation _ _ %= _ Calc

# 演出
execute if score _ _ matches 0 run function makeup:effect/doom/proceed
# 0なら死
execute if score _ _ matches 0 if score _ Doom matches 0 run function effect:doom/death

#> job:trigger/jump/
#
# ジャンプしたときの処理
#
# @within function player:tick

### 跳躍攻撃処理
execute if score @s Choyaku matches 1.. if predicate player:effects/is_jump_boost at @s run function skill:act/ninja/choyaku/jump
execute if score @s SeiyouNabu matches 1.. at @s run function skill:act/ninja/seiyou/jump

### ジャンプトリガーリセット
scoreboard players reset @s Jump
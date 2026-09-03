#> skill:act/archer/madan/apply/

execute at @s run playsound minecraft:block.water.ambient master @a[distance=..32] ~ ~ ~ 1 1.2 0

execute as @e[distance=0,type=#lib:arrow,limit=1] run function skill:act/archer/madan/apply/arrow

### チェインアローの演出有効化
function skill:act/archer/madan/schedule/

### 飛んでるやつの判定有効化
function skill:trigger/projectile/

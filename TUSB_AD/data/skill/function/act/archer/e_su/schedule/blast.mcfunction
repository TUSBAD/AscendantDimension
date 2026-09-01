#> skill:act/archer/e_su/schedule/blast

### 矢自体に当たったことにする

scoreboard players operation @s PotentialSkill = @s ProjectileSkill
function skill:act/archer/e_su/hit/

### 矢だったら消す
kill @s

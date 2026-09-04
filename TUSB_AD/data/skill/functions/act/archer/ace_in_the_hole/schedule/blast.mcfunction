#> skill:act/archer/ace_in_the_hole/schedule/blast

### 矢自体に当たったことにする

scoreboard players operation @s PotentialSkill = @s ProjectileSkill
function skill:act/archer/ace_in_the_hole/hit/

### 矢だったら消す
kill @s

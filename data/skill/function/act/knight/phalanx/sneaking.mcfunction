#> skill:act/knight/phalanx/sneaking

# スニーク時の処理

# まず自身につける
function skill:act/knight/phalanx/apply

# その後周囲につける
execute as @a[distance=..15] at @s run function skill:act/knight/phalanx/apply_sneak
